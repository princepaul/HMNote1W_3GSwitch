.class public Lcom/mediatek/phone/wrapper/CallManagerWrapper;
.super Ljava/lang/Object;
.source "CallManagerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallManagerWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addConferenceMember(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1372
    const-string v1, "CallManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[addConferenceMember], number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallManager;->addConferenceMember(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "CallManagerWrapper"

    const-string v2, "[addConferenceMember], exception find!!!~~"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;IZ)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "numberToDial"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "isIMSCallOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1304
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1305
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 1306
    .local v3, "isSipPhone":Z
    :goto_0
    const/4 v0, 0x0

    .line 1307
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    move v1, p2

    .line 1309
    .local v1, "dialSlot":I
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 1310
    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1311
    const-string v4, "persist.radio.default_sim"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1315
    :cond_0
    const-string v4, "CallManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dial, number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isIMSOnly = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    if-nez p3, :cond_2

    .line 1318
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1328
    :goto_1
    return-object v0

    .line 1305
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v1    # "dialSlot":I
    .end local v3    # "isSipPhone":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1322
    .restart local v0    # "connection":Lcom/android/internal/telephony/Connection;
    .restart local v1    # "dialSlot":I
    .restart local v3    # "isSipPhone":Z
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/telephony/CallManager;->dialWithSipUri(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1324
    :catch_0
    move-exception v2

    .line 1325
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot dial, numberToDial:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dialSlot:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getCallManager()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v0

    .line 1357
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 1178
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    .line 1176
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1154
    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1155
    const-string v1, "CallManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDefaultPhone], invalid slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/4 v1, 0x0

    .line 1163
    :goto_0
    return-object v1

    .line 1158
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getDefaultPhoneGemini()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1163
    goto :goto_0

    .line 1161
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_1
.end method

.method public static registerForCallWaiting(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 1019
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1020
    return-void
.end method

.method public static registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1030
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1031
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1032
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1033
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForCallWaitingEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1032
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1039
    :cond_1
    return-void
.end method

.method public static registerForCdmaOtaStatusChange(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 974
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 975
    return-void
.end method

.method public static registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 985
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 986
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 987
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 988
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChangeEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 987
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 992
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 994
    :cond_1
    return-void
.end method

.method public static registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1332
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 1334
    .local v0, "geminiSlots":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1335
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, p0, p1, p2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCipherIndicationEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    .end local v0    # "geminiSlots":[I
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1340
    :cond_1
    return-void
.end method

.method public static registerForCrssSuppServiceNotification(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 739
    return-void
.end method

.method public static registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 748
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 749
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 750
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 751
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 750
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 755
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 757
    :cond_1
    return-void
.end method

.method public static registerForDisconnect(Landroid/os/Handler;I)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 177
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 178
    .local v1, "geminiSlots":[I
    array-length v0, v1

    .line 179
    .local v0, "count":I
    new-array v3, v0, [I

    .line 180
    .local v3, "whats":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 181
    aput p1, v3, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;[ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public static registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 192
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 193
    .local v1, "geminiSlots":[I
    array-length v0, v1

    .line 194
    .local v0, "count":I
    new-array v3, v0, [I

    .line 195
    .local v3, "whats":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 196
    aput p1, v3, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {p0, v3, p2}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;[ILjava/lang/Object;)V

    .line 199
    return-void
.end method

.method public static registerForDisconnect(Landroid/os/Handler;[I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "whats"    # [I

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisconnect(Landroid/os/Handler;[ILjava/lang/Object;)V

    .line 208
    return-void
.end method

.method public static registerForDisconnect(Landroid/os/Handler;[ILjava/lang/Object;)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "whats"    # [I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 221
    .local v0, "geminiSlots":[I
    array-length v3, p1

    array-length v4, v0

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 224
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    aget v3, p1, v1

    aget v4, v0, v1

    invoke-virtual {v2, p0, v3, p2, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnectEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "geminiSlots":[I
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    aget v2, p1, v2

    invoke-virtual {v3, p0, v2, p2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    :cond_2
    return-void
.end method

.method public static registerForDisplayInfo(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 1063
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1064
    return-void
.end method

.method public static registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1074
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1075
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1076
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1077
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1076
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1081
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1083
    :cond_1
    return-void
.end method

.method public static registerForInCallVoicePrivacyOff(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 600
    return-void
.end method

.method public static registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 610
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 612
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 613
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOffEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 619
    :cond_1
    return-void
.end method

.method public static registerForInCallVoicePrivacyOn(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 577
    return-void
.end method

.method public static registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 587
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 589
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 590
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOnEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 596
    :cond_1
    return-void
.end method

.method public static registerForIncomingRing(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    return-void
.end method

.method public static registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 353
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 355
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 356
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRingEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    :cond_1
    return-void
.end method

.method public static registerForMmiComplete(Landroid/os/Handler;[I)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "whats"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 663
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 666
    .local v0, "geminiSlots":[I
    array-length v3, p1

    array-length v4, v0

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 668
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 669
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    aget v3, p1, v1

    aget v4, v0, v1

    invoke-virtual {v2, p0, v3, v5, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiCompleteEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "geminiSlots":[I
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    aget v2, p1, v2

    invoke-virtual {v3, p0, v2, v5}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 675
    :cond_2
    return-void
.end method

.method public static registerForMmiInitiate(Landroid/os/Handler;[I)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "whats"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 701
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 702
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 704
    .local v0, "geminiSlots":[I
    array-length v3, p1

    array-length v4, v0

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 707
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    aget v3, p1, v1

    aget v4, v0, v1

    invoke-virtual {v2, p0, v3, v5, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiateEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "geminiSlots":[I
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    aget v2, p1, v2

    invoke-virtual {v3, p0, v2, v5}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 713
    :cond_2
    return-void
.end method

.method public static registerForNewRingingConnection(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 144
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 145
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    :cond_1
    return-void
.end method

.method public static registerForPostDialCharacter(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 783
    return-void
.end method

.method public static registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 793
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 794
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 795
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 796
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacterEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 800
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 802
    :cond_1
    return-void
.end method

.method public static registerForPreciseCallStateChanged(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    return-void
.end method

.method public static registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 271
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 273
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 274
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    :cond_1
    return-void
.end method

.method public static registerForRingbackTone(Landroid/os/Handler;I)V
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x0

    .line 389
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 391
    .local v1, "geminiSlots":[I
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v2, v0, v3

    .line 392
    .local v2, "gs":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, v6, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackToneEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlots":[I
    .end local v2    # "gs":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, v6}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 397
    :cond_1
    return-void
.end method

.method public static registerForServiceStateChanged(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 1200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1201
    return-void
.end method

.method public static registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1211
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1212
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1213
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1214
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p0, p1, v6, v1}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChangedEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1218
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, p0, p1, p2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1220
    :cond_1
    return-void
.end method

.method public static registerForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "whats"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p0

    .line 78
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 79
    .local v0, "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v1

    .line 81
    .local v1, "geminiSlots":[I
    array-length v4, p2

    array-length v5, v1

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 83
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 84
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 85
    aget v3, v1, v2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aget v4, p2, v2

    invoke-interface {v3, p1, v4, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "gPhone":Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v1    # "geminiSlots":[I
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 90
    aget v3, p2, v3

    invoke-interface {p0, p1, v3, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    :cond_2
    return-void
.end method

.method public static registerForSignalInfo(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 1107
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1108
    return-void
.end method

.method public static registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1118
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1119
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1120
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1121
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 1120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1125
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1127
    :cond_1
    return-void
.end method

.method public static registerForSpeechInfo(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "whats"    # [I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 919
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v2, v3

    .line 920
    .local v2, "isSipCall":Z
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    .line 921
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 923
    .local v0, "geminiSlots":[I
    array-length v5, p2

    array-length v6, v0

    if-lt v5, v6, :cond_1

    :goto_1
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 925
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 926
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    aget v4, p2, v1

    aget v5, v0, v1

    invoke-virtual {v3, p1, v4, v7, v5}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfoEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "geminiSlots":[I
    .end local v1    # "i":I
    .end local v2    # "isSipCall":Z
    :cond_0
    move v2, v4

    .line 919
    goto :goto_0

    .restart local v0    # "geminiSlots":[I
    .restart local v2    # "isSipCall":Z
    :cond_1
    move v3, v4

    .line 923
    goto :goto_1

    .line 930
    .end local v0    # "geminiSlots":[I
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    aget v4, p2, v4

    invoke-virtual {v3, p1, v4, v7}, Lcom/android/internal/telephony/CallManager;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 932
    :cond_3
    return-void
.end method

.method public static registerForSuppServiceFailed(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 828
    return-void
.end method

.method public static registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 839
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 840
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 841
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 842
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailedEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 841
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 848
    :cond_1
    return-void
.end method

.method public static registerForSuppServiceNotification(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 873
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 874
    return-void
.end method

.method public static registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 884
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 885
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 886
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 887
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2, v1}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotificationEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 886
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 891
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 893
    :cond_1
    return-void
.end method

.method public static registerForUnknownConnection(Landroid/os/Handler;I)V
    .locals 7
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    const/4 v6, 0x0

    .line 308
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 309
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 310
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 311
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, v6, v1}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnectionEx(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, p1, v6}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    :cond_1
    return-void
.end method

.method public static registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1363
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->registerForVoLteConferenceCallNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1365
    return-void
.end method

.method public static registerForVtReplaceDisconnect(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 525
    return-void
.end method

.method public static registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 549
    return-void
.end method

.method public static registerForVtRingInfo(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "ringInfo"    # I

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    return-void
.end method

.method public static registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "ringInfo"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 445
    return-void
.end method

.method public static registerForVtStatusInfo(Landroid/os/Handler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/phone/wrapper/CallManagerWrapper;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 473
    return-void
.end method

.method public static registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 497
    return-void
.end method

.method public static registerPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1187
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-static {}, Lcom/android/internal/telephony/gemini/MTKCallManager;->getInstance()Lcom/android/internal/telephony/gemini/MTKCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/MTKCallManager;->registerPhoneGemini(Lcom/android/internal/telephony/Phone;)V

    .line 1192
    :goto_0
    return-void

    .line 1190
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0
.end method

.method public static unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1047
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1048
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1049
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1050
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaitingEx(Landroid/os/Handler;I)V

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1053
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1055
    :cond_1
    return-void
.end method

.method public static unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1002
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1003
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1004
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1005
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChangeEx(Landroid/os/Handler;I)V

    .line 1004
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1009
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1011
    :cond_1
    return-void
.end method

.method public static unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1343
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 1345
    .local v0, "geminiSlots":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1346
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/telephony/CallManager;->unregisterForCipherIndicationEx(Landroid/os/Handler;I)V

    .line 1345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    .end local v0    # "geminiSlots":[I
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 1351
    :cond_1
    return-void
.end method

.method public static unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 765
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 766
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 767
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 768
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotificationEx(Landroid/os/Handler;I)V

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 774
    :cond_1
    return-void
.end method

.method public static unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 244
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 246
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 247
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnectEx(Landroid/os/Handler;I)V

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 252
    :cond_1
    return-void
.end method

.method public static unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1091
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1092
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1093
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1094
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfoEx(Landroid/os/Handler;I)V

    .line 1093
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1097
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1099
    :cond_1
    return-void
.end method

.method public static unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 644
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 645
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 646
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 647
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOffEx(Landroid/os/Handler;I)V

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 653
    :cond_1
    return-void
.end method

.method public static unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 627
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 629
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 630
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOnEx(Landroid/os/Handler;I)V

    .line 629
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 636
    :cond_1
    return-void
.end method

.method public static unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 371
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 373
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 374
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRingEx(Landroid/os/Handler;I)V

    .line 373
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 380
    :cond_1
    return-void
.end method

.method public static unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 683
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 684
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 685
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 686
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiCompleteEx(Landroid/os/Handler;I)V

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 692
    :cond_1
    return-void
.end method

.method public static unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 721
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 722
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 723
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 724
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiateEx(Landroid/os/Handler;I)V

    .line 723
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 728
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 730
    :cond_1
    return-void
.end method

.method public static unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 160
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 161
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 162
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 163
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnectionEx(Landroid/os/Handler;I)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 169
    :cond_1
    return-void
.end method

.method public static unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 810
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 811
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 812
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 813
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacterEx(Landroid/os/Handler;I)V

    .line 812
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 819
    :cond_1
    return-void
.end method

.method public static unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 289
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 291
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 292
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChangedEx(Landroid/os/Handler;I)V

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 298
    :cond_1
    return-void
.end method

.method public static unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 405
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 406
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 407
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 408
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnectEx(Landroid/os/Handler;I)V

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 413
    :cond_1
    return-void
.end method

.method public static unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1229
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1230
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1231
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1232
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChangedEx(Landroid/os/Handler;I)V

    .line 1231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1236
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1238
    :cond_1
    return-void
.end method

.method public static unregisterForServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;[I)V
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "whats"    # [I

    .prologue
    const/4 v3, 0x0

    .line 103
    if-eqz p0, :cond_2

    .line 104
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 107
    .local v0, "geminiSlots":[I
    array-length v2, p2

    array-length v4, v0

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 110
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move-object v2, p0

    .line 112
    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    aget v4, v0, v1

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    move v2, v3

    .line 107
    goto :goto_0

    .line 116
    .end local v0    # "geminiSlots":[I
    :cond_1
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 121
    :cond_2
    aget v2, p2, v3

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    return-void
.end method

.method public static unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1135
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1136
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 1137
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 1138
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfoEx(Landroid/os/Handler;I)V

    .line 1137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1141
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1143
    :cond_1
    return-void
.end method

.method public static unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 958
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 959
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 960
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 961
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfoEx(Landroid/os/Handler;I)V

    .line 960
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 964
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 966
    :cond_1
    return-void
.end method

.method public static unregisterForSpeechInfo(Landroid/os/Handler;I)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "slotId"    # I

    .prologue
    .line 941
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    const-string v0, "CallManagerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregisterForSpeechInfo], invalid slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :goto_0
    return-void

    .line 946
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfoEx(Landroid/os/Handler;I)V

    goto :goto_0

    .line 948
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public static unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 856
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 858
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 859
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailedEx(Landroid/os/Handler;I)V

    .line 858
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 865
    :cond_1
    return-void
.end method

.method public static unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 901
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 902
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 903
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 904
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotificationEx(Landroid/os/Handler;I)V

    .line 903
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 910
    :cond_1
    return-void
.end method

.method public static unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 325
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 326
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    .line 327
    .local v2, "geminiSlots":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, v0, v3

    .line 328
    .local v1, "geminiSlot":I
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnectionEx(Landroid/os/Handler;I)V

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "arr$":[I
    .end local v1    # "geminiSlot":I
    .end local v2    # "geminiSlots":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 334
    :cond_1
    return-void
.end method

.method public static unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1368
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->unregisterForVoLteConferenceCallNotification(Landroid/os/Handler;)V

    .line 1369
    return-void
.end method

.method public static unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 568
    return-void
.end method

.method public static unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 464
    return-void
.end method

.method public static unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 516
    return-void
.end method

.method public static vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 1270
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 1271
    const/4 v0, 0x0

    .line 1272
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    move v2, p2

    .line 1274
    .local v2, "dialSlotId":I
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1276
    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1277
    const-string v4, "CallManagerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[vtDial], invalid dialSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 1290
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    :goto_0
    return-object v1

    .line 1285
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {p0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getPhoneBySlotId(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/telephony/CallManager;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1290
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v1    # "conn":Lcom/android/internal/telephony/Connection;
    goto :goto_0

    .line 1286
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v3

    .line 1287
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    .line 1288
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 1252
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getCDMASlot()I

    move-result v1

    .line 1253
    .local v1, "cdmaSlot":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1254
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1255
    const-string v2, "CallManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendBurstDtmf], cdmaSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "cdmaSlot":I
    :goto_0
    return-void

    .line 1257
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    goto :goto_0
.end method

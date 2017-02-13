.class public final Lcom/android/internal/telephony/GeminiSmsMessage;
.super Landroid/telephony/SmsMessage;
.source "GeminiSmsMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "simId"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/telephony/GeminiSmsMessage;->simId:I

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsMessage;I)V
    .locals 1
    .param p1, "sms"    # Landroid/telephony/SmsMessage;
    .param p2, "simId"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-object v0, p0, Lcom/android/internal/telephony/GeminiSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 96
    :goto_0
    iput p2, p0, Lcom/android/internal/telephony/GeminiSmsMessage;->simId:I

    .line 97
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/GeminiSmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    goto :goto_0
.end method

.method public static createFromEfRecord(I[BI)Lcom/android/internal/telephony/GeminiSmsMessage;
    .locals 3
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "simId"    # I

    .prologue
    .line 166
    invoke-static {p2}, Lcom/android/internal/telephony/GeminiSmsMessage;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "format":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GeminiSmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 170
    .local v1, "sms":Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/GeminiSmsMessage;

    invoke-direct {v2, v1, p2}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    goto :goto_0
.end method

.method public static createFromPdu([BI)Lcom/android/internal/telephony/GeminiSmsMessage;
    .locals 5
    .param p0, "pdu"    # [B
    .param p1, "simId"    # I

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/internal/telephony/GeminiSmsMessage;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "format":Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create SmsMessage from pdu with format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GeminiSmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 109
    .local v1, "sms":Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_0

    .line 110
    new-instance v2, Lcom/android/internal/telephony/GeminiSmsMessage;

    invoke-direct {v2, v1, p1}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    .line 113
    :goto_0
    return-object v2

    .line 112
    :cond_0
    const-string v2, "SMS"

    const-string v3, "fail to create SmsMessage from pdu"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createFromPdu([BLjava/lang/String;I)Lcom/android/internal/telephony/GeminiSmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 120
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GeminiSmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 122
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v1, Lcom/android/internal/telephony/GeminiSmsMessage;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method protected static getSmsFormat(I)Ljava/lang/String;
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 303
    invoke-static {p0}, Lcom/android/internal/telephony/GeminiSmsMessage;->isCdmaVoiceEx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "3gpp2"

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3gpp"

    goto :goto_0
.end method

.method private static isCdmaVoiceEx(I)Z
    .locals 4
    .param p0, "simId"    # I

    .prologue
    .line 283
    const/4 v0, 0x1

    .line 286
    .local v0, "activePhone":I
    :try_start_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 287
    .local v2, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getActivePhoneType(I)I

    move-result v0

    .line 296
    .end local v2    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :goto_0
    const/4 v3, 0x2

    if-ne v3, v0, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 290
    .restart local v2    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 292
    .end local v2    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;I)Lcom/android/internal/telephony/GeminiSmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "simId"    # I

    .prologue
    .line 141
    invoke-static {p0}, Lcom/android/internal/telephony/GeminiSmsMessage;->newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 143
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v1, Lcom/android/internal/telephony/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Lcom/android/internal/telephony/GeminiSmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "simId"    # I

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/internal/telephony/GeminiSmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 135
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v1, Lcom/android/internal/telephony/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Lcom/android/internal/telephony/GeminiSmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "simId"    # I

    .prologue
    .line 149
    invoke-static {p0}, Lcom/android/internal/telephony/GeminiSmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 151
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v1, Lcom/android/internal/telephony/GeminiSmsMessage;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/GeminiSmsMessage;-><init>(Landroid/telephony/SmsMessage;I)V

    return-object v1
.end method


# virtual methods
.method public getMessageSimId()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/internal/telephony/GeminiSmsMessage;->simId:I

    return v0
.end method

.method public getSmsc()[B
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getSmsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getSmsc(Ljava/lang/String;)[B
    .locals 9
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 202
    const-string v5, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call getSmsc with format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/GeminiSmsMessage;->getPdu()[B

    move-result-object v1

    .line 204
    .local v1, "pdu":[B
    const-string v5, "3gpp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    if-nez v1, :cond_0

    .line 206
    const-string v5, "SMS"

    const-string v6, "pdu is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 224
    :goto_0
    return-object v2

    .line 210
    :cond_0
    aget-byte v5, v1, v8

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v3, v5, 0x1

    .line 211
    .local v3, "smsc_len":I
    new-array v2, v3, [B

    .line 214
    .local v2, "smsc":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    array-length v7, v2

    invoke-static {v1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "SMS"

    const-string v6, "Out of boudns"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 218
    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "smsc":[B
    .end local v3    # "smsc_len":I
    :cond_1
    const-string v5, "3gpp2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, v4

    .line 221
    goto :goto_0

    .line 224
    :cond_2
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getSmsc()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getTpdu()[B
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getTpdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getTpdu(Ljava/lang/String;)[B
    .locals 10
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 249
    const-string v6, "SMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call getTpdu with format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/GeminiSmsMessage;->getPdu()[B

    move-result-object v1

    .line 251
    .local v1, "pdu":[B
    const-string v6, "3gpp"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 252
    if-nez v1, :cond_0

    .line 253
    const-string v6, "SMS"

    const-string v7, "pdu is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 272
    :goto_0
    return-object v3

    .line 257
    :cond_0
    aget-byte v6, v1, v9

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v2, v6, 0x1

    .line 258
    .local v2, "smsc_len":I
    array-length v6, v1

    sub-int v4, v6, v2

    .line 259
    .local v4, "tpdu_len":I
    new-array v3, v4, [B

    .line 262
    .local v3, "tpdu":[B
    const/4 v6, 0x0

    :try_start_0
    array-length v7, v3

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "SMS"

    const-string v7, "Out of boudns"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 266
    goto :goto_0

    .line 268
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "smsc_len":I
    .end local v3    # "tpdu":[B
    .end local v4    # "tpdu_len":I
    :cond_1
    const-string v5, "3gpp2"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 269
    goto :goto_0

    .line 272
    :cond_2
    invoke-super {p0}, Landroid/telephony/SmsMessage;->getTpdu()[B

    move-result-object v3

    goto :goto_0
.end method

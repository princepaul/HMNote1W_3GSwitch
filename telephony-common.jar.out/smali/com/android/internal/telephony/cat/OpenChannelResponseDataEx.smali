.class Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;
.super Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.source "ResponseData.java"


# instance fields
.field mProtocolType:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;II)V
    .locals 3
    .param p1, "channelStatus"    # Lcom/android/internal/telephony/cat/bip/ChannelStatus;
    .param p2, "bearerDesc"    # Lcom/android/internal/telephony/cat/bip/BearerDesc;
    .param p3, "bufferSize"    # I
    .param p4, "protocolType"    # I

    .prologue
    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/bip/ChannelStatus;Lcom/android/internal/telephony/cat/bip/BearerDesc;I)V

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 401
    const-string v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenChannelResponseDataEx-constructor: protocolType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput p4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    .line 403
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 406
    if-nez p1, :cond_0

    .line 407
    const-string v7, "[BIP]"

    const-string v8, "OpenChannelResponseDataEx-format: buf is null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 410
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-eq v11, v7, :cond_1

    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-ne v10, v7, :cond_3

    .line 412
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-nez v7, :cond_2

    .line 413
    const-string v7, "[BIP]"

    const-string v8, "OpenChannelResponseDataEx-format: bearer null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-eq v7, v11, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-eq v7, v12, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-eq v7, v13, :cond_3

    .line 418
    const-string v7, "[BIP]"

    const-string v8, "OpenChannelResponseDataEx-format: bearer type is not gprs"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    :cond_3
    const/4 v5, 0x0

    .line 423
    .local v5, "length":I
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    if-eqz v7, :cond_6

    .line 424
    const-string v7, "[BIP]"

    const-string v8, "OpenChannelResponseDataEx-format: Write channel status into TR"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 426
    .local v6, "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 427
    const/4 v5, 0x2

    .line 428
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelId:I

    iget-object v8, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v8, v8, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    or-int/2addr v7, v8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 430
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatusInfo:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 431
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenChannel Channel status Rsp:tag["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],len["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],cId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "],status["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mChannelStatus:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v6    # "tag":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v7, :cond_16

    .line 440
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-eq v11, v7, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mProtocolType:I

    if-ne v10, v7, :cond_5

    .line 442
    :cond_4
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Write bearer description into TR. bearerType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v9, v9, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 444
    .restart local v6    # "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-ne v11, v7, :cond_8

    .line 446
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    instance-of v7, v7, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;

    if-eqz v7, :cond_7

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    check-cast v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;

    .line 448
    .local v2, "gprsBD":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    const/4 v5, 0x7

    .line 449
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 450
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 451
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 452
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 453
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 454
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 455
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 456
    iget v7, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 457
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenChannelResponseDataEx-format: tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",bearerType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->bearerType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",precedence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->precedence:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",delay: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->delay:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",reliability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->reliability:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",peak: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->peak:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mean: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->mean:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",pdp type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;->pdpType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v2    # "gprsBD":Lcom/android/internal/telephony/cat/bip/GPRSBearerDesc;
    .end local v6    # "tag":I
    :cond_5
    :goto_2
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    if-ltz v7, :cond_17

    .line 506
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Write buffer size into TR.["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 508
    .restart local v6    # "tag":I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 509
    const/4 v5, 0x2

    .line 510
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 511
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v7, v7, 0x8

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 512
    iget v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 513
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenChannelResponseDataEx-format: tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",buffer size(hi-byte): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    shr-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",buffer size(low-byte): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 435
    .end local v6    # "tag":I
    :cond_6
    const-string v7, "[BIP]"

    const-string v8, "No Channel status in TR."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 467
    .restart local v6    # "tag":I
    :cond_7
    const-string v7, "[BIP]"

    const-string v8, "Not expected GPRSBearerDesc instance"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 469
    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-ne v13, v7, :cond_15

    .line 470
    const/16 v7, 0xa

    new-array v0, v7, [I

    .line 471
    .local v0, "bufferArr":[I
    const/4 v4, 0x0

    .line 472
    .local v4, "index":I
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    instance-of v7, v7, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;

    if-eqz v7, :cond_14

    .line 473
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;

    .line 474
    .local v1, "euTranBD":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I

    if-eqz v7, :cond_9

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->QCI:I

    aput v7, v0, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 475
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I

    if-eqz v7, :cond_a

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateU:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 476
    :cond_a
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I

    if-eqz v7, :cond_b

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateD:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 477
    :cond_b
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I

    if-eqz v7, :cond_c

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateU:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 478
    :cond_c
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I

    if-eqz v7, :cond_d

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateD:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 479
    :cond_d
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I

    if-eqz v7, :cond_e

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateUEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 480
    :cond_e
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I

    if-eqz v7, :cond_f

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->maxBitRateDEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 481
    :cond_f
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I

    if-eqz v7, :cond_10

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateUEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 482
    :cond_10
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I

    if-eqz v7, :cond_11

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->guarBitRateDEx:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 483
    :cond_11
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I

    if-eqz v7, :cond_12

    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->pdnType:I

    aput v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 484
    :cond_12
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EUTranBearerDesc length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    if-lez v4, :cond_13

    .line 486
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 489
    :goto_3
    iget v7, v1, Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;->bearerType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 490
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v4, :cond_5

    .line 491
    aget v7, v0, v3

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 492
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EUTranBearerDesc buf: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 488
    .end local v3    # "i":I
    :cond_13
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 495
    .end local v1    # "euTranBD":Lcom/android/internal/telephony/cat/bip/EUTranBearerDesc;
    :cond_14
    const-string v7, "[BIP]"

    const-string v8, "Not expected EUTranBearerDesc instance"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 497
    .end local v0    # "bufferArr":[I
    .end local v4    # "index":I
    :cond_15
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    if-ne v12, v7, :cond_5

    .line 498
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 499
    iget-object v7, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    check-cast v7, Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;

    iget v7, v7, Lcom/android/internal/telephony/cat/bip/DefaultBearerDesc;->bearerType:I

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 503
    .end local v6    # "tag":I
    :cond_16
    const-string v7, "[BIP]"

    const-string v8, "No bearer description in TR."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 518
    :cond_17
    const-string v7, "[BIP]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No buffer size in TR.["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;->mBufferSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

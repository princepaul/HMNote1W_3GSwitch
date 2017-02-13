.class Lcom/mediatek/settings/RecoverChannelSettings;
.super Landroid/os/Handler;
.source "CellBroadcastCheckBox.java"


# static fields
.field private static final CHANNEL_URI:Landroid/net/Uri;

.field private static final CHANNEL_URI1:Landroid/net/Uri;

.field private static final CHANNEL_URI2:Landroid/net/Uri;

.field private static final CHANNEL_URI3:Landroid/net/Uri;

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final LOG_TAG:Ljava/lang/String; = "RecoverChannelSettings"

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
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

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 324
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    .line 326
    const-string v0, "content://cb/channel2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI2:Landroid/net/Uri;

    .line 327
    const-string v0, "content://cb/channel3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI3:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 3
    .param p1, "simId"    # I
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 329
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    .line 331
    iput-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 332
    iput-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 335
    iput p1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    .line 336
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 337
    iput-object p2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    .line 339
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    packed-switch v0, :pswitch_data_0

    .line 354
    const-string v0, "RecoverChannelSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error with simid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 342
    :pswitch_0
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 345
    :pswitch_1
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 348
    :pswitch_2
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI2:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 351
    :pswitch_3
    sget-object v0, Lcom/mediatek/settings/RecoverChannelSettings;->CHANNEL_URI3:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, -0x1

    .line 458
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 459
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 460
    const-string v6, "RecoverChannelSettings"

    const-string v7, "handleSetCellBroadcastConfigResponse,ar is null"

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    .line 464
    const-string v6, "RecoverChannelSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSetCellBroadcastConfigResponse: ar.exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v2, -0x1

    .line 466
    .local v2, "fromIndex":I
    const/4 v5, -0x1

    .line 467
    .local v5, "toIndex":I
    iget-object v6, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 471
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 472
    iget-object v6, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v6}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 473
    .local v1, "channelId":I
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v6, :cond_1

    .line 474
    move v5, v3

    .line 476
    :cond_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v6, :cond_2

    .line 477
    move v2, v3

    .line 471
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    .end local v1    # "channelId":I
    :cond_3
    if-eq v2, v9, :cond_4

    if-ne v5, v9, :cond_5

    .line 487
    .end local v2    # "fromIndex":I
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "toIndex":I
    :cond_4
    return-void

    .line 483
    .restart local v2    # "fromIndex":I
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    .restart local v5    # "toIndex":I
    :cond_5
    move v3, v5

    :goto_1
    if-lt v3, v2, :cond_4

    .line 484
    invoke-direct {p0, v3}, Lcom/mediatek/settings/RecoverChannelSettings;->updateChannelToDatabase(I)Z

    .line 483
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;II)V
    .locals 3
    .param p1, "objectList"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "fromId"    # I
    .param p3, "toId"    # I

    .prologue
    .line 442
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/mediatek/settings/RecoverChannelSettings;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mSimId:I

    invoke-static {v1, p1, p1, v0, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setCellBroadcastSmsConfig(Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 444
    return-void
.end method

.method private updateChannelToDatabase(I)Z
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x0

    .line 363
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CellBroadcastChannel;

    .line 364
    .local v0, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v2

    .line 365
    .local v2, "id":I
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 367
    .local v1, "enable":Z
    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v4

    .line 368
    .local v4, "number":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v6, "values":Landroid/content/ContentValues;
    const-string v9, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v9, "name"

    invoke-virtual {v6, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v9, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v9, "enable"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/mediatek/settings/CellBroadcastChannel;->getKeyId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "where":Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v10, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v7, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 375
    .local v5, "rows":I
    if-lez v5, :cond_0

    const/4 v8, 0x1

    :cond_0
    return v8
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 447
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 449
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/RecoverChannelSettings;->handleSetCellBroadcastConfigResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method queryChannelFromDatabase()Z
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 379
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v0, "number"

    aput-object v0, v2, v1

    const-string v0, "enable"

    aput-object v0, v2, v3

    .line 380
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 382
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 383
    if-eqz v7, :cond_2

    .line 384
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    new-instance v6, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/mediatek/settings/CellBroadcastChannel;-><init>()V

    .line 386
    .local v6, "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelId(I)V

    .line 387
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setKeyId(I)V

    .line 388
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {v6, v0}, Lcom/mediatek/settings/CellBroadcastChannel;->setChannelState(Z)V

    .line 390
    iget-object v0, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 395
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .restart local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_1
    move v0, v9

    .line 389
    goto :goto_1

    .line 394
    .end local v6    # "channel":Lcom/mediatek/settings/CellBroadcastChannel;
    :cond_2
    if-eqz v7, :cond_3

    .line 395
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_3
    return v8
.end method

.method public updateChannelStatus()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 408
    invoke-virtual {p0}, Lcom/mediatek/settings/RecoverChannelSettings;->queryChannelFromDatabase()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    const-string v2, "RecoverChannelSettings"

    const-string v3, "queryChannelFromDatabase failure!"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 413
    .local v9, "length":I
    const-string v2, "RecoverChannelSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateChannelStatus length: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "infoList":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const/4 v1, -0x1

    .line 417
    .local v1, "channelId":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v9, :cond_5

    .line 418
    iget-object v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/mediatek/settings/RecoverChannelSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CellBroadcastChannel;

    invoke-virtual {v2}, Lcom/mediatek/settings/CellBroadcastChannel;->getChannelState()Z

    move-result v6

    .line 420
    .local v6, "channelState":Z
    if-eqz v6, :cond_2

    .line 421
    if-nez v0, :cond_3

    .line 422
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .end local v0    # "infoList":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 417
    .restart local v0    # "infoList":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 423
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_4

    .line 424
    new-array v8, v5, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 425
    .local v8, "info":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    aput-object v0, v8, v11

    .line 426
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v4

    invoke-direct {p0, v8, v2, v4}, Lcom/mediatek/settings/RecoverChannelSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;II)V

    .line 427
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .end local v0    # "infoList":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 428
    .restart local v0    # "infoList":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    goto :goto_2

    .line 429
    .end local v8    # "info":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->setToServiceId(I)V

    goto :goto_2

    .line 433
    .end local v6    # "channelState":Z
    :cond_5
    if-eqz v0, :cond_0

    .line 434
    const-string v2, "RecoverChannelSettings"

    const-string v3, "updateChannelStatus last times"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-array v8, v5, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 436
    .restart local v8    # "info":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    aput-object v0, v8, v11

    .line 437
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v3

    invoke-direct {p0, v8, v2, v3}, Lcom/mediatek/settings/RecoverChannelSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;II)V

    goto/16 :goto_0
.end method

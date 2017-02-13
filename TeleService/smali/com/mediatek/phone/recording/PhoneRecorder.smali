.class public Lcom/mediatek/phone/recording/PhoneRecorder;
.super Lcom/mediatek/phone/recording/Recorder;
.source "PhoneRecorder.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field private static final AUDIO_ANY:Ljava/lang/String; = "audio/*"

.field private static final AUDIO_DB_TITLE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final TAG:Ljava/lang/String; = "PhoneRecorder"

.field private static sIsRecording:Z

.field private static sLock:[B

.field private static sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

.field private static sSDcardFullFlag:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioDBPlaylistName:Ljava/lang/String;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field mMaxFileSize:J

.field mRequestedType:Ljava/lang/String;

.field mSampleInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/mediatek/phone/recording/Recorder;-><init>()V

    .line 83
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mMaxFileSize:J

    .line 98
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    .line 101
    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 17
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 247
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 249
    .local v3, "current":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 250
    .local v7, "modDate":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 252
    .local v6, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, "sTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, "sDate":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 264
    .local v13, "title":Ljava/lang/String;
    const-string v14, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v14, "mime_type"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 275
    .local v9, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 277
    .local v2, "base":Landroid/net/Uri;
    invoke-virtual {v9, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 279
    .local v10, "result":Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 280
    const-string v14, "PhoneRecorder"

    const-string v15, "----- Unable to save recorded audio !!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v10, 0x0

    .line 296
    .end local v10    # "result":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v10

    .line 284
    .restart local v10    # "result":Landroid/net/Uri;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getPlaylistId()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 285
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/phone/recording/PhoneRecorder;->createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 287
    :cond_2
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 288
    .local v1, "audioId":I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getPlaylistId()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v14, v15}, Lcom/mediatek/phone/recording/PhoneRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v14, :cond_0

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v14}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "audioId"    # I
    .param p3, "playlistId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 353
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 354
    .local v2, "cols":[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 355
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 357
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 358
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 359
    .local v6, "base":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 360
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 365
    .end local v6    # "base":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 335
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 337
    const-string v2, "name"

    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 339
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 340
    const-string v2, "PhoneRecorder"

    const-string v3, "---- Unable to save recorded audio -----"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    return-object v1
.end method

.method private getExactRecordingPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v1, ""

    .line 418
    .local v1, "exactPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExactRecordingPath(): path is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 419
    iget-object v10, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const-string v11, "storage"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 420
    .local v5, "storageVolumeList":[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    .line 421
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v9, v0, v3

    .line 422
    .local v9, "volume":Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 423
    .local v7, "volDescription":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, "volPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExactRecordingPath(): volDes is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", volPath is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 426
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, "subPath":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExactRecordingPath(): exactPath is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subPath is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 433
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "exactPath":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "subPath":Ljava/lang/String;
    .end local v7    # "volDescription":Ljava/lang/String;
    .end local v8    # "volPath":Ljava/lang/String;
    .end local v9    # "volume":Landroid/os/storage/StorageVolume;
    .local v2, "exactPath":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 421
    .end local v2    # "exactPath":Ljava/lang/String;
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v1    # "exactPath":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "volDescription":Ljava/lang/String;
    .restart local v8    # "volPath":Ljava/lang/String;
    .restart local v9    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "volDescription":Ljava/lang/String;
    .end local v8    # "volPath":Ljava/lang/String;
    .end local v9    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    move-object v2, v1

    .line 433
    .end local v1    # "exactPath":Ljava/lang/String;
    .restart local v2    # "exactPath":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sLock:[B

    monitor-enter v1

    .line 118
    :try_start_0
    sget-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/mediatek/phone/recording/PhoneRecorder;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/recording/PhoneRecorder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    .line 121
    :cond_0
    sget-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPlaylistId()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 304
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 305
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 308
    .local v2, "ids":[Ljava/lang/String;
    const-string v8, "name=?"

    .line 309
    .local v8, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0011

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 310
    new-array v4, v5, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 313
    .local v4, "args":[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/phone/recording/PhoneRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 315
    const-string v0, "PhoneRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    const/4 v7, -0x1

    .line 318
    .local v7, "id":I
    if-eqz v6, :cond_2

    .line 319
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 323
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_2
    return v7
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, "PhoneRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 385
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 383
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 384
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 385
    goto :goto_0
.end method

.method public static sdcardFullFlag()Z
    .locals 2

    .prologue
    .line 213
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    .line 214
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRecording(Z)V
    .locals 0
    .param p0, "isRecording"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    .line 135
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 390
    const-string v0, "PhoneRecorder"

    const-string v1, "MediaRecorder error..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 399
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 401
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 411
    :cond_0
    return-void
.end method

.method public saveSample()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->sampleLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    const/4 v1, 0x0

    .line 229
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/phone/recording/PhoneRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    .line 238
    const/4 v2, 0x1

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public setMContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method public startRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord, mRequestedType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 139
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    iput-boolean v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mSampleInterrupted:Z

    .line 144
    const-string v1, "PhoneRecorder"

    const-string v2, "-----Please insert an SD card----"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_1
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iput-boolean v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mSampleInterrupted:Z

    .line 147
    const-string v1, "PhoneRecorder"

    const-string v2, "--------Storage is full-------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_2
    :try_start_0
    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    const/4 v1, 0x3

    const-string v2, ".amr"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecording(ILjava/lang/String;)V

    .line 162
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "oe":Ljava/io/IOException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    goto :goto_0

    .line 152
    .end local v0    # "oe":Ljava/io/IOException;
    :cond_3
    :try_start_1
    const-string v1, "audio/3gpp"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    const/4 v1, 0x1

    const-string v2, ".3gpp"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecording(ILjava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_4
    const-string v1, "audio/*"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    const/4 v1, 0x1

    const-string v2, ".3gpp"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecording(ILjava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output file type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    goto :goto_0
.end method

.method public stopRecord(Z)V
    .locals 6
    .param p1, "mount"    # Z

    .prologue
    .line 182
    sget-boolean v3, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    if-nez v3, :cond_0

    .line 206
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v3, "stopRecord"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->stop()V

    .line 188
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 189
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v3

    iget-object v1, v3, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mHandler:Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;

    .line 190
    .local v1, "myHandler":Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;
    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->saveSample()Z

    .line 192
    sget-boolean v3, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    if-eqz v3, :cond_1

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 196
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getRecordingPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/phone/recording/PhoneRecorder;->getExactRecordingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 202
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->delete()V

    .line 203
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

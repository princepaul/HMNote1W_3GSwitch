.class public Lcom/android/phone/CallRecorder;
.super Ljava/lang/Object;
.source "CallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallRecorder$CallRecordStateListener;
    }
.end annotation


# static fields
.field private static final EXTENSION_CALL_RECORD:Ljava/lang/String; = ".mp3"

.field private static final TAG:Ljava/lang/String; = "CallRecorder"


# instance fields
.field private mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

.field private mCallRecorder:Lmiui/media/Mp3Recorder;

.field private mContext:Landroid/content/Context;

.field private mOutFilePath:Ljava/lang/String;

.field private mStorageMonitor:Lcom/android/phone/StorageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/phone/CallRecorder;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public getCallRecorderNameOfConnection(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 155
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 156
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getName(Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "name":Ljava/lang/String;
    const-string v2, "\\\\|\\/|:|\\*|\\?|\"|<|>|\\||;|&|!|\\[|\\]|\'|`|\\(|\\)|\\{|\\}"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getRecordingTimeInMillis()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public isCallRecording()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallRecordStateListener(Lcom/android/phone/CallRecorder$CallRecordStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/phone/CallRecorder$CallRecordStateListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    .line 37
    return-void
.end method

.method public startCallRecord(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "callersNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "callerNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 40
    const-string v7, "CallRecorder"

    const-string v8, "startCallRecord()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    if-nez v7, :cond_0

    .line 43
    new-instance v7, Lcom/android/phone/StorageMonitor;

    iget-object v8, p0, Lcom/android/phone/CallRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/phone/StorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    .line 45
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    new-instance v8, Lcom/android/phone/CallRecorder$1;

    invoke-direct {v8, p0}, Lcom/android/phone/CallRecorder$1;-><init>(Lcom/android/phone/CallRecorder;)V

    invoke-virtual {v7, v8}, Lcom/android/phone/StorageMonitor;->startMonitor(Lcom/android/phone/StorageMonitor$Listener;)I

    move-result v1

    .line 52
    .local v1, "error":I
    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v7}, Lcom/android/phone/StorageMonitor;->isUsingExternalStorage()Z

    move-result v7

    if-nez v7, :cond_5

    .line 53
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v7}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    .line 54
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    if-eqz v7, :cond_2

    .line 55
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v7}, Lcom/android/phone/StorageMonitor;->isUsingExternalStorage()Z

    move-result v7

    if-nez v7, :cond_3

    .line 56
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    invoke-interface {v7, v11}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    .line 117
    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    if-ne v1, v10, :cond_4

    .line 58
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    invoke-interface {v7, v10}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    goto :goto_0

    .line 66
    :cond_5
    const-string v3, "/MIUI/sound_recorder/call_rec"

    .line 67
    .local v3, "recordPathOfMIUI":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v4, "sampleDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 70
    invoke-static {v4, v9, v9, v9}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v7

    if-nez v7, :cond_6

    .line 71
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    invoke-interface {v7, v12}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    .line 72
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v7}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    goto :goto_0

    .line 76
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mContext:Landroid/content/Context;

    const-string v8, ".mp3"

    invoke-static {v7, p1, p2, v8}, Lmiui/util/RecordingNameUtils;->generatCallRecordingName(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v2, "recordFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CallRecorder;->mOutFilePath:Ljava/lang/String;

    .line 79
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v7, :cond_7

    .line 81
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7}, Lmiui/media/Mp3Recorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7}, Lmiui/media/Mp3Recorder;->release()V

    .line 86
    :cond_7
    new-instance v7, Lmiui/media/Mp3Recorder;

    invoke-direct {v7}, Lmiui/media/Mp3Recorder;-><init>()V

    iput-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    .line 87
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/TelephonyCapabilities;->supportCallStreamRecording(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 88
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7, v12}, Lmiui/media/Mp3Recorder;->setAudioSource(I)V

    .line 92
    :goto_2
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7, v11}, Lmiui/media/Mp3Recorder;->setQuality(I)V

    .line 93
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0x1f40

    invoke-virtual {v7, v8}, Lmiui/media/Mp3Recorder;->setAudioSamplingRate(I)V

    .line 94
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    .line 95
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    iget-object v8, p0, Lcom/android/phone/CallRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lmiui/media/Mp3Recorder;->setOutputFile(Ljava/lang/String;)V

    .line 96
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    new-instance v8, Lcom/android/phone/CallRecorder$2;

    invoke-direct {v8, p0}, Lcom/android/phone/CallRecorder$2;-><init>(Lcom/android/phone/CallRecorder;)V

    invoke-virtual {v7, v8}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 105
    .local v5, "token":J
    :try_start_1
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7}, Lmiui/media/Mp3Recorder;->prepare()V

    .line 106
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7}, Lmiui/media/Mp3Recorder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    const-string v7, "CallRecorder"

    const-string v8, "Call record started!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    if-eqz v7, :cond_2

    .line 115
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    invoke-interface {v7}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordStarted()V

    goto/16 :goto_0

    .line 90
    .end local v5    # "token":J
    :cond_8
    iget-object v7, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v7, v10}, Lmiui/media/Mp3Recorder;->setAudioSource(I)V

    goto :goto_2

    .line 107
    .restart local v5    # "token":J
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {p0, v7}, Lcom/android/phone/CallRecorder;->stopCallRecord(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 82
    .end local v5    # "token":J
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public stopCallRecord()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallRecorder;->stopCallRecord(I)V

    .line 121
    return-void
.end method

.method public stopCallRecord(I)V
    .locals 7
    .param p1, "errCode"    # I

    .prologue
    const/4 v6, 0x0

    .line 124
    const-string v3, "CallRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopRecording("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mStorageMonitor:Lcom/android/phone/StorageMonitor;

    invoke-virtual {v3}, Lcom/android/phone/StorageMonitor;->stopMonitor()V

    .line 127
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    .line 129
    .local v0, "duration":J
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->release()V

    .line 134
    iput-object v6, p0, Lcom/android/phone/CallRecorder;->mCallRecorder:Lmiui/media/Mp3Recorder;

    .line 135
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    iget-object v4, p0, Lcom/android/phone/CallRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordStoped(ILjava/lang/String;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mCallRecordStateListener:Lcom/android/phone/CallRecorder$CallRecordStateListener;

    invoke-interface {v3, p1}, Lcom/android/phone/CallRecorder$CallRecordStateListener;->onCallRecordFailed(I)V

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/android/phone/CallRecorder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/CallRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lmiui/provider/Recordings;->notifyRecording(Landroid/content/Context;Ljava/lang/String;J)V

    .line 142
    iput-object v6, p0, Lcom/android/phone/CallRecorder;->mOutFilePath:Ljava/lang/String;

    .line 144
    .end local v0    # "duration":J
    :cond_1
    return-void

    .line 130
    .restart local v0    # "duration":J
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CallRecorder"

    const-string v4, "Error when stop call recording"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

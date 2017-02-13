.class public Lcom/android/phone/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "Ringtone"


# instance fields
.field private final STREAM_RING:I

.field private final mAllowRemote:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBackupUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/Ringtone;->STREAM_RING:I

    .line 56
    iput-object p1, p0, Lcom/android/phone/Ringtone;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    iput-boolean p2, p0, Lcom/android/phone/Ringtone;->mAllowRemote:Z

    .line 59
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/phone/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 60
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/android/phone/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 61
    return-void

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_0
.end method

.method private destroyLocalPlayer()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 160
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 163
    :cond_0
    return-void
.end method

.method private instantiateMediaPlayer()V
    .locals 4

    .prologue
    .line 98
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/phone/Ringtone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 101
    iget-object v1, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 102
    iget-object v1, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->destroyLocalPlayer()V

    .line 105
    iget-boolean v1, p0, Lcom/android/phone/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_0

    .line 106
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->destroyLocalPlayer()V

    .line 110
    iget-boolean v1, p0, Lcom/android/phone/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_0

    .line 111
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFallbackRingtone()Z
    .locals 10

    .prologue
    const/4 v1, 0x2

    .line 187
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v9

    .line 189
    .local v9, "ringtoneType":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 193
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1100001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 195
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_3

    .line 196
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 197
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 205
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 206
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 207
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 208
    const/4 v0, 0x1

    .line 222
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "ringtoneType":I
    :goto_1
    return v0

    .line 200
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "ringtoneType":I
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 213
    .local v7, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->destroyLocalPlayer()V

    .line 214
    const-string v0, "Ringtone"

    const-string v1, "Failed to open fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "ringtoneType":I
    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 210
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v9    # "ringtoneType":I
    :cond_3
    :try_start_1
    const-string v0, "Ringtone"

    const-string v1, "Could not load fallback ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 215
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v8

    .line 216
    .local v8, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v0, "Ringtone"

    const-string v1, "Fallback ringtone does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 219
    .end local v8    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const-string v0, "Ringtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not playing fallback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 173
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Lcom/android/phone/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 120
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .line 129
    .local v0, "canonicalUri":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Lcom/android/phone/Ringtone;->mRemoteToken:Landroid/os/Binder;

    const/4 v4, 0x2

    invoke-interface {v2, v3, v0, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUri(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "backupUri"    # Landroid/net/Uri;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->destroyLocalPlayer()V

    .line 71
    iput-object p1, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    .line 72
    iput-object p2, p0, Lcom/android/phone/Ringtone;->mBackupUri:Landroid/net/Uri;

    .line 73
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringtone;->mBackupUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 74
    const-string v0, "Ringtone"

    const-string v1, "setUri: mUri & mBackupUri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->instantiateMediaPlayer()V

    .line 83
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringtone;->mBackupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mBackupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringtone;->mUri:Landroid/net/Uri;

    .line 85
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->instantiateMediaPlayer()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "Ringtone"

    const-string v1, "Successfully created local player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "Ringtone"

    const-string v1, "Problem opening; delegating to remote player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/phone/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/android/phone/Ringtone;->destroyLocalPlayer()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Lcom/android/phone/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

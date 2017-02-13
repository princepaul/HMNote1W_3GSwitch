.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "r":Lcom/android/phone/Ringtone;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 450
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 405
    :pswitch_1
    const-string v3, "mRingHandler: PLAY_RING_ONCE..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mRingtone:Lcom/android/phone/Ringtone;

    if-nez v3, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creating ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 411
    :try_start_0
    new-instance v2, Lcom/android/phone/Ringtone;

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/phone/Ringtone;-><init>(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v1    # "r":Lcom/android/phone/Ringtone;
    .local v2, "r":Lcom/android/phone/Ringtone;
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v4, v4, Lcom/android/phone/Ringer;->mDefaultRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/Ringtone;->setUri(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 418
    .end local v2    # "r":Lcom/android/phone/Ringtone;
    .restart local v1    # "r":Lcom/android/phone/Ringtone;
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mDefaultRingtoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 419
    new-instance v1, Lcom/android/phone/Ringtone;

    .end local v1    # "r":Lcom/android/phone/Ringtone;
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v7}, Lcom/android/phone/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 420
    .restart local v1    # "r":Lcom/android/phone/Ringtone;
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v3, v3, Lcom/android/phone/Ringer;->mDefaultRingtoneUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/phone/Ringtone;->setUri(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 422
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v4

    .line 423
    const/4 v3, 0x3

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iput-object v1, v3, Lcom/android/phone/Ringer;->mRingtone:Lcom/android/phone/Ringtone;

    .line 426
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    :cond_4
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v3, Lcom/android/phone/Ringer;->mRingtone:Lcom/android/phone/Ringtone;

    .line 429
    if-eqz v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/phone/Ringer$1;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/Ringtone;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 430
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 431
    invoke-virtual {v1}, Lcom/android/phone/Ringtone;->play()V

    .line 432
    iget-object v4, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v4

    .line 433
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$200(Lcom/android/phone/Ringer;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_5

    .line 434
    iget-object v3, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    # setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v3, v5, v6}, Lcom/android/phone/Ringer;->access$202(Lcom/android/phone/Ringer;J)J

    .line 436
    :cond_5
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v3, "Ringer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open ringtone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v5, v5, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 440
    :pswitch_2
    const-string v3, "mRingHandler: STOP_RING..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    .line 441
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "r":Lcom/android/phone/Ringtone;
    check-cast v1, Lcom/android/phone/Ringtone;

    .line 442
    .restart local v1    # "r":Lcom/android/phone/Ringtone;
    if-eqz v1, :cond_6

    .line 443
    invoke-virtual {v1}, Lcom/android/phone/Ringtone;->stop()V

    .line 447
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/Ringer$1;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 445
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/Ringer;->access$100(Ljava/lang/String;)V

    goto :goto_3

    .line 413
    .end local v1    # "r":Lcom/android/phone/Ringtone;
    .restart local v2    # "r":Lcom/android/phone/Ringtone;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "r":Lcom/android/phone/Ringtone;
    .restart local v1    # "r":Lcom/android/phone/Ringtone;
    goto :goto_2

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

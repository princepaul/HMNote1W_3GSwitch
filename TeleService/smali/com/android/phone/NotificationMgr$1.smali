.class Lcom/android/phone/NotificationMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1593
    const-string v1, "com.android.phone.ACTION_NOTIFY_MISSED_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1594
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getMissedCallNotifyTimes()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mMissedCallSetting:I
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$600(Lcom/android/phone/NotificationMgr;)I

    move-result v3

    sub-int/2addr v2, v3

    # += operator for: Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$512(Lcom/android/phone/NotificationMgr;I)I

    .line 1595
    const-class v2, Lcom/android/phone/NotificationMgr;

    monitor-enter v2

    .line 1596
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$700(Lcom/android/phone/NotificationMgr;)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$500(Lcom/android/phone/NotificationMgr;)I

    move-result v1

    if-lez v1, :cond_5

    .line 1597
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 1601
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1, v3}, Lcom/android/phone/NotificationMgr;->access$802(Lcom/android/phone/NotificationMgr;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 1604
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    # setter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1, v3}, Lcom/android/phone/NotificationMgr;->access$802(Lcom/android/phone/NotificationMgr;Landroid/media/Ringtone;)Landroid/media/Ringtone;

    .line 1606
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1607
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$800(Lcom/android/phone/NotificationMgr;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 1610
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # operator-- for: Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$510(Lcom/android/phone/NotificationMgr;)I

    .line 1611
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 1612
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mMissedCallNotifyTimes:I
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$500(Lcom/android/phone/NotificationMgr;)I

    move-result v1

    if-lez v1, :cond_3

    .line 1613
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1615
    .local v0, "alarm":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr;->getMissedCallNotifyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1622
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    :cond_3
    :goto_0
    monitor-exit v2

    .line 1624
    :cond_4
    return-void

    .line 1620
    :cond_5
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$1;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelMissedCallRepeatReminder()V

    goto :goto_0

    .line 1622
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

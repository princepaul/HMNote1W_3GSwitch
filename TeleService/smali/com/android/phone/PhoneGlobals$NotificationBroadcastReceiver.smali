.class public Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1422
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private clearMissedCallNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1485
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1486
    .local v0, "clearIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1488
    return-void
.end method

.method private closeSystemDialogs(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1482
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "action":Ljava/lang/String;
    const-string v4, "PhoneGlobals"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcast from Notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const-string v4, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1435
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupEx(Lcom/android/internal/telephony/CallManager;)Z

    .line 1477
    :goto_0
    return-void

    .line 1437
    :cond_0
    const-string v4, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1439
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;->closeSystemDialogs(Landroid/content/Context;)V

    .line 1440
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;->clearMissedCallNotification(Landroid/content/Context;)V

    .line 1444
    # invokes: Lcom/android/phone/PhoneGlobals;->dismissKeyguard(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/phone/PhoneGlobals;->access$1800(Landroid/content/Context;)V

    .line 1447
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1448
    .local v1, "callIntent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1450
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1451
    .end local v1    # "callIntent":Landroid/content/Intent;
    :cond_1
    const-string v4, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1453
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;->closeSystemDialogs(Landroid/content/Context;)V

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;->clearMissedCallNotification(Landroid/content/Context;)V

    .line 1458
    # invokes: Lcom/android/phone/PhoneGlobals;->dismissKeyguard(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/phone/PhoneGlobals;->access$1800(Landroid/content/Context;)V

    .line 1461
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1462
    .local v3, "smsIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1468
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v2

    .line 1470
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PhoneGlobals"

    const-string v5, "start sms activity fail, sms is not available"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1474
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "smsIntent":Landroid/content/Intent;
    :cond_2
    const-string v4, "PhoneGlobals"

    const-string v5, "Received hang-up request from notification, but there\'s no call the system can hang up."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

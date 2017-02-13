.class Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneGlobalsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/PhoneGlobals$1;

    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1271
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/phone/ext/ExtensionManager;->getPhoneGlobalsBroadcastReceiverExtension()Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/mediatek/phone/ext/PhoneGlobalsBroadcastReceiverExtension;->onReceive(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->onReceiveGlobalMtkActions(Landroid/content/Context;Landroid/content/Intent;)Z
    invoke-static {v5, p1, p2}, Lcom/android/phone/PhoneGlobals;->access$1200(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1287
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->onReceiveAirplanModeChange(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v5, p1, p2}, Lcom/android/phone/PhoneGlobals;->access$1300(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 1289
    :cond_2
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1290
    const-string v5, "PhoneGlobals"

    const-string v6, "mReceiver: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- reason: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "apnType":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1306
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "DISCONNECTED"

    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "roamingOn"

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    .line 1311
    .local v2, "disconnectedDueToRoaming":Z
    :cond_3
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v5, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    const/16 v5, 0xa

    :goto_1
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xb

    goto :goto_1

    .line 1314
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "disconnectedDueToRoaming":Z
    :cond_5
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1325
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->onReceiveSimStateChagne(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v5, p1, p2}, Lcom/android/phone/PhoneGlobals;->access$1400(Lcom/android/phone/PhoneGlobals;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1327
    :cond_6
    const-string v5, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1328
    const-string v5, "phoneName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1329
    .local v3, "newPhone":Ljava/lang/String;
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Radio technology switched. Now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is active."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology()V
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$1500(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    .line 1331
    .end local v3    # "newPhone":Ljava/lang/String;
    :cond_7
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1332
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/phone/PhoneGlobals;->access$1600(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V

    .line 1334
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->initDefaultSlotId(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/phone/PhoneGlobals;->access$1700(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1335
    :cond_8
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1336
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1337
    const-string v5, "PhoneGlobals"

    const-string v6, "Emergency Callback Mode arrived in PhoneGlobals."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v5, "phoneinECMState"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1340
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1346
    :cond_9
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1349
    :cond_a
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1350
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 1352
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_DOCK_EVENT -> mDockState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/PhoneGlobals;->mDockState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1354
    :cond_b
    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1355
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v6, "ttyPreferredMode"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v5, v6}, Lcom/android/phone/PhoneGlobals;->access$802(Lcom/android/phone/PhoneGlobals;I)I

    .line 1357
    const-string v5, "PhoneGlobals"

    const-string v6, "mReceiver: TTY_PREFERRED_MODE_CHANGE_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const-string v5, "PhoneGlobals"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v7}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1360
    :cond_c
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1361
    const-string v5, "android.media.EXTRA_RINGER_MODE"

    const/4 v6, 0x2

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1363
    .local v4, "ringerMode":I
    if-nez v4, :cond_0

    .line 1364
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$PhoneGlobalsBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_0
.end method

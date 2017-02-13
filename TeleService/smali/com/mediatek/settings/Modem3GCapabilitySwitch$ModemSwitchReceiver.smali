.class Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Modem3GCapabilitySwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/Modem3GCapabilitySwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "action":Ljava/lang/String;
    sget-object v9, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 417
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    const-string v10, "receives EVENT_3G_SWITCH_LOCK_CHANGED..."

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v9, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 421
    .local v1, "bLocked":Z
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    .line 470
    .end local v1    # "bLocked":Z
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    sget-object v9, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 424
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting the switch......@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const/16 v10, 0x12c

    invoke-virtual {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showDialog(I)V

    .line 426
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const-string v10, "Receive starting switch broadcast"

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$600(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Ljava/lang/String;)V

    .line 427
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const/4 v10, 0x0

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->setStatusBarEnableStatus(Z)V
    invoke-static {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)V

    .line 428
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$700(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    const-wide/32 v11, 0xea60

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$800(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 430
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mNetworkMode:Landroid/preference/ListPreference;
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$800(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/preference/ListPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 432
    :cond_2
    sget-object v9, Lcom/mediatek/phone/wrapper/PhoneWrapper;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 433
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Done the switch......@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const-string v10, "Receive switch done broadcast"

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->showInstanceIndex(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$600(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Ljava/lang/String;)V

    .line 435
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->clearAfterSwitch(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$900(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Landroid/content/Intent;)V

    .line 436
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$700(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 437
    :cond_3
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 438
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    # setter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z
    invoke-static {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$1002(Lcom/mediatek/settings/Modem3GCapabilitySwitch;Z)Z

    .line 439
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIsAirplaneModeOn new  state is ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mIsAirplaneModeOn:Z
    invoke-static {v11}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$1000(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->removeDialog(I)V

    .line 441
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    goto/16 :goto_0

    .line 442
    :cond_4
    const-string v9, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 443
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    const-string v10, "ACTION_SIM_INFO_UPDATE received"

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->removeDialog(I)V

    .line 445
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    invoke-static {v9}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 446
    .local v8, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 447
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->init3GSwitchPref()V
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$1100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    .line 448
    const-wide/16 v3, -0x2

    .line 449
    .local v3, "simId":J
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    iget-object v9, v9, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mPhoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v9}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v5

    .line 451
    .local v5, "slot":I
    int-to-long v9, v5

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 452
    int-to-long v3, v5

    .line 457
    :goto_1
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateSummarys(J)V
    invoke-static {v9, v3, v4}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$1200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;J)V

    .line 458
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    goto/16 :goto_0

    .line 454
    :cond_5
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    invoke-static {v9, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 455
    .local v2, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_6

    iget-wide v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    :goto_2
    goto :goto_1

    :cond_6
    const-wide/16 v3, -0x2

    goto :goto_2

    .line 460
    .end local v2    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v3    # "simId":J
    .end local v5    # "slot":I
    :cond_7
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    invoke-virtual {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->finish()V

    goto/16 :goto_0

    .line 462
    .end local v8    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_8
    const-string v9, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 463
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    const-string v10, "receives ACTION_SIM_INDICATOR_STATE_CHANGED..."

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v9, "state"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 465
    .local v7, "state":I
    const-string v9, "slotId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 466
    .local v6, "slotId":I
    const-string v9, "Settings/Modem3GCapabilitySwitch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " slotId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # invokes: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->updateNetworkAnd3GServiceStatus()V
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$500(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V

    .line 468
    iget-object v9, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$ModemSwitchReceiver;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    # getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    invoke-static {v9}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    goto/16 :goto_0
.end method

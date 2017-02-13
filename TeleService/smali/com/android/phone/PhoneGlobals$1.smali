.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 352
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleMessageMtk(Landroid/os/Message;)Z
    invoke-static {v3, p1}, Lcom/android/phone/PhoneGlobals;->access$200(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 357
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 420
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "READY"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 425
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 426
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v3, v5}, Lcom/android/phone/PhoneGlobals;->access$302(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 428
    :cond_2
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 430
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v5}, Lcom/android/phone/PhoneGlobals;->access$402(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 364
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 394
    :pswitch_4
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming(I)V

    goto :goto_0

    .line 399
    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 442
    :pswitch_6
    const/4 v0, 0x0

    .line 443
    .local v0, "inDockMode":Z
    sget v3, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v3, :cond_3

    .line 444
    const/4 v0, 0x1

    .line 446
    :cond_3
    const-string v3, "PhoneGlobals"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 450
    .local v1, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/WiredHeadsetManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->bluetoothManager:Lcom/android/phone/BluetoothManager;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/BluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->audioRouter:Lcom/android/phone/AudioRouter;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AudioRouter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/AudioRouter;->setSpeaker(Z)V

    .line 455
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 462
    .end local v0    # "inDockMode":Z
    .end local v1    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :pswitch_7
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->wiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/WiredHeadsetManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 463
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;)I

    move-result v2

    .line 470
    .local v2, "ttyMode":I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->convertTTYmodeToRadio(I)I
    invoke-static {v4, v2}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setTTYMode(Lcom/android/internal/telephony/Phone;ILandroid/os/Handler;I)V

    goto/16 :goto_0

    .line 465
    .end local v2    # "ttyMode":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "ttyMode":I
    goto :goto_1

    .line 475
    .end local v2    # "ttyMode":I
    :pswitch_8
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/phone/PhoneGlobals;->access$1000(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 479
    :pswitch_9
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/android/phone/PhoneGlobals;->access$1100(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

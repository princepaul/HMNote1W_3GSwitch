.class Lcom/android/phone/BluetoothPhoneService$1;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 263
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 330
    :goto_0
    :pswitch_0
    return-void

    .line 268
    :pswitch_1
    const/4 v0, 0x0

    .line 269
    .local v0, "connection":Lcom/android/internal/telephony/Connection;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 273
    .restart local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handlePhoneDisconnect(Lcom/android/internal/telephony/Connection;)Z
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothPhoneService;->access$100(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->startUserBusyTone()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$200(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    const/4 v2, 0x0

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handlePreciseCallStateChange(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothPhoneService;->access$300(Lcom/android/phone/BluetoothPhoneService;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 289
    .end local v0    # "connection":Lcom/android/internal/telephony/Connection;
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleListCurrentCalls()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$400(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleQueryPhoneState()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$500(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 295
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallState()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$600(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 300
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSwapSecondCallStateBT()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$700(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 305
    :pswitch_6
    iget-object v2, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleCdmaSetSecondCallState(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothPhoneService;->access$800(Lcom/android/phone/BluetoothPhoneService;Z)V

    goto :goto_0

    .line 313
    :pswitch_7
    const-string v1, "BluetoothPhoneService"

    const-string v2, "handleMessage: receive ring event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :pswitch_8
    const-string v1, "RESTRICT_MULTITLAKS"

    # invokes: Lcom/android/phone/BluetoothPhoneService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$900(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/BluetoothPhoneService$1;->this$0:Lcom/android/phone/BluetoothPhoneService;

    # invokes: Lcom/android/phone/BluetoothPhoneService;->handleDelayMOCallEnd()V
    invoke-static {v1}, Lcom/android/phone/BluetoothPhoneService;->access$1000(Lcom/android/phone/BluetoothPhoneService;)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

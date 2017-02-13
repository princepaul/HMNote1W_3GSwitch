.class Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$SimAuth;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$SimAuth;)V
    .locals 0

    .prologue
    .line 2012
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2015
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2016
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2046
    :goto_0
    return-void

    .line 2019
    :sswitch_0
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SIM_AUTH_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    monitor-enter v2

    .line 2021
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2022
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1102(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Ljava/lang/String;)Ljava/lang/String;

    .line 2026
    :goto_1
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_AUTH_COMPLETE result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1100(Lcom/android/phone/PhoneInterfaceManager$SimAuth;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Z)Z

    .line 2028
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2029
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2024
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResult:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1102(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2032
    :sswitch_1
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "SIM_AUTH_GENERAL_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    monitor-enter v2

    .line 2034
    :try_start_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2035
    const-string v1, "PhoneInterfaceManager"

    const-string v3, "SIM Auth Fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1302(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Lcom/android/internal/telephony/uicc/IccIoResult;)Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2040
    :goto_2
    const-string v1, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM_AUTH_GENERAL_COMPLETE result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    # getter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;
    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1300(Lcom/android/phone/PhoneInterfaceManager$SimAuth;)Lcom/android/internal/telephony/uicc/IccIoResult;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1202(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Z)Z

    .line 2042
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2043
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2038
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$SimAuth$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$SimAuth;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    # setter for: Lcom/android/phone/PhoneInterfaceManager$SimAuth;->mResponse:Lcom/android/internal/telephony/uicc/IccIoResult;
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$SimAuth;->access$1302(Lcom/android/phone/PhoneInterfaceManager$SimAuth;Lcom/android/internal/telephony/uicc/IccIoResult;)Lcom/android/internal/telephony/uicc/IccIoResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2016
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

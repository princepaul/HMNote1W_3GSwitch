.class Lcom/android/phone/NetworkQueryService$1;
.super Landroid/os/Handler;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 150
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$100(Lcom/android/phone/NetworkQueryService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mPhoneComplete:Z
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mDcList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/NetworkQueryService;->mLteDcPhoneComplete:Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkQueryService;->access$102(Lcom/android/phone/NetworkQueryService;Z)Z

    .line 152
    const-string v0, "scan completed, broadcasting results EVENT_NETWORK_SCAN_LTEMMDC_COMPLETED"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mDList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$500(Lcom/android/phone/NetworkQueryService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/phone/NetworkQueryService;->broadcastQueryResultsForMmdc(Landroid/os/AsyncResult;I)V
    invoke-static {v2, v0, v3}, Lcom/android/phone/NetworkQueryService;->access$600(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;I)V

    .line 156
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    # invokes: Lcom/android/phone/NetworkQueryService;->isValidMessage(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/phone/NetworkQueryService;->access$700(Lcom/android/phone/NetworkQueryService;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "scan completed, broadcasting results"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$1;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkQueryService;->access$800(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 195
    :sswitch_2
    const-string v0, "cancel get available networks action... "

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

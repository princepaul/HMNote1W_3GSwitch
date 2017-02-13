.class Lcom/android/phone/NetworkQueryService$2;
.super Lcom/android/phone/INetworkQueryService$Stub;
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
    .line 212
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 5
    .param p1, "cb"    # Lcom/android/phone/INetworkQueryServiceCallback;

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering callback "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$900(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    :goto_0
    monitor-exit v2

    .line 275
    :cond_0
    return-void

    .line 255
    :pswitch_0
    const/16 v0, 0x64

    .line 257
    .local v0, "msgType":I
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$1000(Lcom/android/phone/NetworkQueryService;)I

    move-result v3

    # invokes: Lcom/android/phone/NetworkQueryService;->getSimMsgType(I)I
    invoke-static {v1, v3}, Lcom/android/phone/NetworkQueryService;->access$1100(Lcom/android/phone/NetworkQueryService;I)I

    move-result v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkQuery---msgType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$1200(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v3, v3, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mSlotId:I
    invoke-static {v4}, Lcom/android/phone/NetworkQueryService;->access$1000(Lcom/android/phone/NetworkQueryService;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getAvailableNetworks(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v3, -0x2

    # setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1, v3}, Lcom/android/phone/NetworkQueryService;->access$902(Lcom/android/phone/NetworkQueryService;I)I

    .line 264
    const-string v1, "starting new query"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0    # "msgType":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 269
    :pswitch_1
    :try_start_1
    const-string v1, "query already in progress"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/phone/INetworkQueryServiceCallback;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[stopNetworkQuery] cancelAvailableNetworks to slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mSlotId:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$1000(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$900(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    .line 292
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$900(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$1200(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    # getter for: Lcom/android/phone/NetworkQueryService;->EVENT_CANCEL_NETWORK_SCAN_COMPLETED_GEMINI:[I
    invoke-static {}, Lcom/android/phone/NetworkQueryService;->access$1300()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/NetworkQueryService;->access$1000(Lcom/android/phone/NetworkQueryService;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mSlotId:I
    invoke-static {v2}, Lcom/android/phone/NetworkQueryService;->access$1000(Lcom/android/phone/NetworkQueryService;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->cancelAvailableNetworks(Lcom/android/internal/telephony/Phone;Landroid/os/Message;I)V

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 300
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistering callback "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$400(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 302
    monitor-exit v1

    .line 304
    :cond_1
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

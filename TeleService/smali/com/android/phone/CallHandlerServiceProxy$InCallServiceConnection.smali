.class Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;
.super Ljava/lang/Object;
.source "CallHandlerServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallHandlerServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallHandlerServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/phone/CallHandlerServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/CallHandlerServiceProxy;
    .param p2, "x1"    # Lcom/android/phone/CallHandlerServiceProxy$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;-><init>(Lcom/android/phone/CallHandlerServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 329
    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$200(Lcom/android/phone/CallHandlerServiceProxy;)Lcom/android/services/telephony/common/ICallHandlerService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Connected, service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service Connected, mCallHandlerServiceGuarded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;
    invoke-static {v2}, Lcom/android/phone/CallHandlerServiceProxy;->access$200(Lcom/android/phone/CallHandlerServiceProxy;)Lcom/android/services/telephony/common/ICallHandlerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    invoke-static {p2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallHandlerService;

    move-result-object v1

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->access$300(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/services/telephony/common/ICallHandlerService;)V

    .line 344
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->resetConnectRetryCount()V
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$400(Lcom/android/phone/CallHandlerServiceProxy;)V

    .line 346
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->setListener(Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 351
    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/CallHandlerServiceProxy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from UI service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # getter for: Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$500(Lcom/android/phone/CallHandlerServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->unbind()V
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$600(Lcom/android/phone/CallHandlerServiceProxy;)V

    .line 359
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    # invokes: Lcom/android/phone/CallHandlerServiceProxy;->reconnectOnRemainingCalls()V
    invoke-static {v0}, Lcom/android/phone/CallHandlerServiceProxy;->access$700(Lcom/android/phone/CallHandlerServiceProxy;)V

    .line 361
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;->this$0:Lcom/android/phone/CallHandlerServiceProxy;

    invoke-virtual {v0, v2}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->clearListener(Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;)V

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

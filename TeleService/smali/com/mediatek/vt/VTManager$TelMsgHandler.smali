.class Lcom/mediatek/vt/VTManager$TelMsgHandler;
.super Landroid/os/Handler;
.source "VTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vt/VTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vt/VTManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/vt/VTManager;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/vt/VTManager;Lcom/mediatek/vt/VTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/vt/VTManager;
    .param p2, "x1"    # Lcom/mediatek/vt/VTManager$1;

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/mediatek/vt/VTManager$TelMsgHandler;-><init>(Lcom/mediatek/vt/VTManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 525
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 556
    :goto_0
    return-void

    .line 527
    :sswitch_0
    const-string v1, "VTManager"

    const-string v2, "=>handleMessage:SET_VT_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CLOSE:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v2, v2, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->OPEN:Lcom/mediatek/vt/VTManager$State;

    iget-object v2, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v2, v2, Lcom/mediatek/vt/VTManager;->mState:Lcom/mediatek/vt/VTManager$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    # getter for: Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z
    invoke-static {v1}, Lcom/mediatek/vt/VTManager;->access$500(Lcom/mediatek/vt/VTManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v2, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 531
    :try_start_0
    const-string v1, "VTManager"

    const-string v3, "wait for setVTReadyImpl"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    iget-object v1, v1, Lcom/mediatek/vt/VTManager;->mTelMsgHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    # getter for: Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z
    invoke-static {v1}, Lcom/mediatek/vt/VTManager;->access$500(Lcom/mediatek/vt/VTManager;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    # invokes: Lcom/mediatek/vt/VTManager;->setVTConnectedImpl()V
    invoke-static {v1}, Lcom/mediatek/vt/VTManager;->access$600(Lcom/mediatek/vt/VTManager;)V

    .line 548
    :goto_2
    const-string v1, "VTManager"

    const-string v2, "<=handleMessage:SET_VT_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "VTManager"

    const-string v3, "wait for setVTReadyImpl, wait error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 537
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 544
    :cond_2
    const-string v1, "VTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage:setVTConnectedImpl failed,mStartVTSMALFail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/vt/VTManager$TelMsgHandler;->this$0:Lcom/mediatek/vt/VTManager;

    # getter for: Lcom/mediatek/vt/VTManager;->mStartVTSMALFail:Z
    invoke-static {v3}, Lcom/mediatek/vt/VTManager;->access$500(Lcom/mediatek/vt/VTManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 551
    :sswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8000000 -> :sswitch_1
    .end sparse-switch
.end method

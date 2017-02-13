.class Lcom/android/internal/telephony/cat/bip/BipManager$1;
.super Landroid/os/Handler;
.source "BipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/bip/BipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/bip/BipManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/bip/BipManager;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 130
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const-string v1, "[BIP]"

    const-string v2, "handleMessage MSG_ID_BIP_CONN_MGR_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mIsOpenInProgress:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$002(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 134
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/telephony/cat/bip/BipManager;->isConnMgrIntentTimeout:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$102(Lcom/android/internal/telephony/cat/bip/BipManager;Z)Z

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$200(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/bip/ChannelStatus;->isActivated:Z

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mBipChannelManager:Lcom/android/internal/telephony/cat/bip/BipChannelManager;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$400(Lcom/android/internal/telephony/cat/bip/BipManager;)Lcom/android/internal/telephony/cat/bip/BipChannelManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mChannelId:I
    invoke-static {v2}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$300(Lcom/android/internal/telephony/cat/bip/BipManager;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/bip/BipManager;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/bip/BipChannelManager;->releaseChannelId(II)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "timerMsg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/cat/bip/BipManager$1;->this$0:Lcom/android/internal/telephony/cat/bip/BipManager;

    # getter for: Lcom/android/internal/telephony/cat/bip/BipManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/bip/BipManager;->access$500(Lcom/android/internal/telephony/cat/bip/BipManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

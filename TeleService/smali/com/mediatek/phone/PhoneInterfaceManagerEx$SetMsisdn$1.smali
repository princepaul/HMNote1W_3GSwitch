.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;)V
    .locals 0

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1146
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1162
    :goto_0
    return-void

    .line 1148
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    monitor-enter v2

    .line 1149
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1150
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v3, "Set msisdn fail"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    const/4 v3, 0x1

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->mDone:Z
    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->access$1002(Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;Z)Z

    .line 1152
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->mResult:I
    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->access$1102(Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;I)I

    .line 1158
    :goto_1
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1159
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1154
    :cond_0
    :try_start_1
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v3, "Set msisdn success"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    const/4 v3, 0x1

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->mDone:Z
    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->access$1002(Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;Z)Z

    .line 1156
    iget-object v1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;

    const/4 v3, 0x1

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->mResult:I
    invoke-static {v1, v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;->access$1102(Lcom/mediatek/phone/PhoneInterfaceManagerEx$SetMsisdn;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1146
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

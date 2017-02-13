.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 912
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 914
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 941
    :goto_0
    return-void

    .line 916
    :pswitch_0
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "EVENT_QUERY_PHB_ADN_INFO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v4, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    monitor-enter v4

    .line 918
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    const/4 v5, 0x1

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z
    invoke-static {v3, v5}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$702(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;Z)Z

    .line 919
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 920
    .local v2, "info":[I
    if-eqz v2, :cond_0

    .line 921
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    const/4 v5, 0x4

    new-array v5, v5, [I

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3, v5}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$802(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;[I)[I

    .line 922
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    aput v6, v3, v5

    .line 923
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v2, v6

    aput v6, v3, v5

    .line 924
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget v6, v2, v6

    aput v6, v3, v5

    .line 925
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget v6, v2, v6

    aput v6, v3, v5

    .line 926
    const-string v3, "PhoneInterfaceManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordSize[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v6}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",recordSize[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v6}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "recordSize[2]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v6}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",recordSize[3]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v6}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v6

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_1
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 938
    monitor-exit v4

    goto/16 :goto_0

    .end local v2    # "info":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 930
    .restart local v2    # "info":[I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    const/4 v5, 0x4

    new-array v5, v5, [I

    # setter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3, v5}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$802(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;[I)[I

    .line 931
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 932
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 933
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 934
    iget-object v3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    # getter for: Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I
    invoke-static {v3}, Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->access$800(Lcom/mediatek/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I

    move-result-object v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 914
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

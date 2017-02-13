.class Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;
.super Landroid/os/Handler;
.source "PhoneRecorderServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/recording/PhoneRecorderServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/recording/PhoneRecorderServices;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    .line 165
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage]what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleMessage]unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v2, "[handleMessage]do start recording"

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->startRecord()V

    goto :goto_0

    .line 179
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 180
    .local v0, "isMounted":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v2, "[handleMessage]do stop recording"

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Lcom/mediatek/phone/recording/PhoneRecorder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->stopRecord(Z)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # setter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;
    invoke-static {v1, v4}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$202(Lcom/mediatek/phone/recording/PhoneRecorderServices;Lcom/mediatek/phone/recording/PhoneRecorder;)Lcom/mediatek/phone/recording/PhoneRecorder;

    .line 187
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    iput-object v4, v1, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    goto :goto_0

    .line 190
    .end local v0    # "isMounted":Ljava/lang/Boolean;
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v2, "[handleMessage]quit worker thread and clear handler"

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$RecordHandler;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mWorkerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$300(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

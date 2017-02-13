.class Lcom/mediatek/phone/recording/PhoneRecorderServices$1;
.super Ljava/lang/Object;
.source "PhoneRecorderServices.java"

# interfaces
.implements Lcom/mediatek/phone/recording/Recorder$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/recording/PhoneRecorderServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/recording/PhoneRecorderServices;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onError]error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    iget-object v1, v1, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    if-eqz v1, :cond_0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v2, "[onError]notify listener"

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    iget-object v1, v1, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    invoke-interface {v1, p1}, Lcom/mediatek/phone/recording/IPhoneRecordStateListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RecorderServices"

    const-string v2, "PhoneRecordService: call listener onError() failed"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 102
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onStateChanged]state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStatus:I
    invoke-static {v3}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$000(Lcom/mediatek/phone/recording/PhoneRecorderServices;)I

    move-result v2

    .line 104
    .local v2, "iPreviousStatus":I
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # setter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mPhoneRecorderStatus:I
    invoke-static {v3, p1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$002(Lcom/mediatek/phone/recording/PhoneRecorderServices;I)I

    .line 105
    if-eq v2, p1, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.VoiceRecorder.STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    invoke-virtual {v3, v0}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    iget-object v3, v3, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    if-eqz v3, :cond_0

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v4, "[onStateChanged]notify listener"

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$1;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    iget-object v3, v3, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    invoke-interface {v3, p1}, Lcom/mediatek/phone/recording/IPhoneRecordStateListener;->onStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RecorderServices"

    const-string v4, "PhoneRecordService: call listener onStateChange failed"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

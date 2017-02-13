.class Lcom/mediatek/phone/recording/PhoneRecorderServices$2;
.super Lcom/mediatek/phone/recording/IPhoneRecorder$Stub;
.source "PhoneRecorderServices.java"


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
    .line 135
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    invoke-direct {p0}, Lcom/mediatek/phone/recording/IPhoneRecorder$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public listen(Lcom/mediatek/phone/recording/IPhoneRecordStateListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v1, "listen"

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    iput-object p1, v0, Lcom/mediatek/phone/recording/PhoneRecorderServices;->mStateListener:Lcom/mediatek/phone/recording/IPhoneRecordStateListener;

    .line 141
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v1, "remove is deprecated, do nothing. listener will be removed automatically"

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public startRecord()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v1, "startRecord"

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$100(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    return-void
.end method

.method public stopRecord(Z)V
    .locals 4
    .param p1, "isMounted"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    const-string v1, "stopRecord"

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->log(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$100(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderServices$2;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderServices;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderServices;->mRecordHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderServices;->access$100(Lcom/mediatek/phone/recording/PhoneRecorderServices;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method

.class Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;
.super Lcom/mediatek/phone/recording/IPhoneRecordStateListener$Stub;
.source "PhoneRecorderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/recording/PhoneRecorderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    invoke-direct {p0}, Lcom/mediatek/phone/recording/IPhoneRecordStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "iError"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mPhoneRecorder:Lcom/mediatek/phone/recording/IPhoneRecorder;
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$100(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)Lcom/mediatek/phone/recording/IPhoneRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 226
    :cond_0
    return-void

    .line 213
    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    goto :goto_0

    .line 217
    :pswitch_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStateChange] state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$200(Lcom/mediatek/phone/recording/PhoneRecorderHandler;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # setter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mPhoneRecorderState:I
    invoke-static {v0, p1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$502(Lcom/mediatek/phone/recording/PhoneRecorderHandler;I)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mListener:Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;
    invoke-static {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$600(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mListener:Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;
    invoke-static {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$600(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorderHandler$3;->this$0:Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    # getter for: Lcom/mediatek/phone/recording/PhoneRecorderHandler;->mCustomValue:I
    invoke-static {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->access$700(Lcom/mediatek/phone/recording/PhoneRecorderHandler;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;->requestUpdateRecordState(II)V

    .line 203
    :cond_0
    return-void
.end method

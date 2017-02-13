.class Lcom/mediatek/phone/vt/VTManagerWrapper$1;
.super Landroid/os/Handler;
.source "VTManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/vt/VTManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTManagerWrapper;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f0b0047

    const/4 v4, 0x1

    .line 185
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VTManagerWrapper handleMessage message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 348
    const-string v1, "VTManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 190
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_OPEN ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-virtual {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTReady()V

    .line 192
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->updateLocalViewToVTManager()V

    .line 193
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    .line 194
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$200(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    goto :goto_0

    .line 198
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_READY ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-virtual {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->setVTConnected()V

    .line 200
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    .line 201
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$200(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    goto :goto_0

    .line 205
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_CONNECTED ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 207
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$200(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    .line 208
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0

    .line 212
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_DISCONNECTED ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0

    .line 217
    :sswitch_4
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_CLOSE ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0

    .line 222
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_RECEIVE_FIRSTFRAME ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto/16 :goto_0

    .line 227
    :sswitch_6
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_START_COUNTER ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->onReceiveVTManagerStartCounter()V

    .line 231
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto/16 :goto_0

    .line 236
    :sswitch_7
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_EM_INDICATION ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :sswitch_8
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_CALL_DISCONNECT ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hangupAllCalls()V

    .line 243
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :sswitch_9
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_NORMAL_END_SESSION_COMMAND ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hangupAllCalls()V

    goto/16 :goto_0

    .line 252
    :sswitch_a
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_START_VTS_FAIL ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hangupAllCalls()V

    .line 254
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :sswitch_b
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_CAMERA ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(ZLcom/android/internal/telephony/Call;)V

    .line 264
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :sswitch_c
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_MEDIA_SERVER_DIED ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/android/phone/PhoneUtils;->hangupAllCalls()V

    .line 274
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :sswitch_d
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_MEDIA_RECORDER_EVENT_INFO ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 279
    const/16 v1, 0x7fff

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_3

    .line 280
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_3
    const/16 v1, 0x321

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 282
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopRecording()V

    .line 283
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getListener()Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getListener()Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler$Listener;->onStorageFull()V

    goto/16 :goto_0

    .line 290
    :sswitch_e
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_MEDIA_RECORDER_EVENT_ERROR ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 291
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    iget-boolean v1, v1, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHasMediaRecordError:Z

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    iput-boolean v4, v1, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHasMediaRecordError:Z

    .line 298
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopRecording()V

    goto/16 :goto_0

    .line 303
    :sswitch_f
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_MEDIA_RECORDER_COMPLETE ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "ok":I
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    iget-boolean v1, v1, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHasMediaRecordError:Z

    if-nez v1, :cond_4

    .line 306
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_ERROR_MEDIA_RECORDER_COMPLETE, arg is OK "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mediatek/phone/vt/VTManagerWrapper;->mHasMediaRecordError:Z

    goto/16 :goto_0

    .line 318
    .end local v0    # "ok":I
    :sswitch_10
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_PEER_CAMERA_OPEN ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :sswitch_11
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_MSG_PEER_CAMERA_CLOSE ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :sswitch_12
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_RESULT_PEER_SNAPSHOT_OK ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :sswitch_13
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_RESULT_PEER_SNAPSHOT_FAIL ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :sswitch_14
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_RESULT_PEER_SNAPSHOT_FAIL_SDCARD_NULL ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :sswitch_15
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "- handler : VT_RESULT_PEER_SNAPSHOT_FAIL_SDACRD_NOT_ENOUGH ! "

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$1;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$300(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_10
        0x10 -> :sswitch_11
        0x7e -> :sswitch_12
        0x7f -> :sswitch_13
        0x82 -> :sswitch_14
        0x83 -> :sswitch_15
        0x8001 -> :sswitch_8
        0x8002 -> :sswitch_a
        0x8003 -> :sswitch_b
        0x8004 -> :sswitch_c
        0x8005 -> :sswitch_d
        0x8006 -> :sswitch_e
        0x8007 -> :sswitch_f
        0x8101 -> :sswitch_9
    .end sparse-switch
.end method

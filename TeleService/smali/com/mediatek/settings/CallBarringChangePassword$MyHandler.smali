.class Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringChangePassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallBarringChangePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final EVENT_PASSWORD_CHANGE:I


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CallBarringChangePassword;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CallBarringChangePassword;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CallBarringChangePassword;Lcom/mediatek/settings/CallBarringChangePassword$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/CallBarringChangePassword;
    .param p2, "x1"    # Lcom/mediatek/settings/CallBarringChangePassword$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;-><init>(Lcom/mediatek/settings/CallBarringChangePassword;)V

    return-void
.end method

.method private handlePasswordChanged(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 234
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 235
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 237
    const-string v3, "Settings/CallChangePassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePasswordChanged: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 242
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    .line 243
    const/16 v2, 0x2bc

    .line 249
    .local v2, "errorid":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$200(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mediatek/settings/CallBarringInterface;->setErrorState(I)V

    .line 250
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 267
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :cond_1
    :goto_1
    return-void

    .line 244
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_3

    .line 245
    const/16 v2, 0x320

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 247
    .end local v2    # "errorid":I
    :cond_3
    const/16 v2, 0x12c

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 254
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 255
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    # getter for: Lcom/mediatek/settings/CallBarringChangePassword;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringChangePassword;->access$100(Lcom/mediatek/settings/CallBarringChangePassword;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    const/16 v5, 0x190

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 261
    :cond_5
    const-string v3, "Settings/CallChangePassword"

    const-string v4, "handlePasswordChanged is called without exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringChangePassword;

    const v4, 0x7f0b048d

    # invokes: Lcom/mediatek/settings/CallBarringChangePassword;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/CallBarringChangePassword;->access$300(Lcom/mediatek/settings/CallBarringChangePassword;I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 219
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringChangePassword$MyHandler;->handlePasswordChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

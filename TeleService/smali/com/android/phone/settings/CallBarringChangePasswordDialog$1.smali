.class Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;
.super Landroid/os/Handler;
.source "CallBarringChangePasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallBarringChangePasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 167
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    # invokes: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->process()V
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$000(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V

    goto :goto_0

    .line 170
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # setter for: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mErrorMessage:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$102(Lcom/android/phone/settings/CallBarringChangePasswordDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    invoke-virtual {v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->show()V

    .line 172
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    # getter for: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$200(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "ar":Landroid/os/AsyncResult;
    check-cast v0, Landroid/os/AsyncResult;

    .line 176
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    # invokes: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->dismiss()V
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$300(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)V

    .line 177
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 182
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 183
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 184
    const/16 v2, 0x64

    .line 190
    .local v2, "errorid":I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    # invokes: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->showErrDialog(I)V
    invoke-static {v3, v2}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$400(Lcom/android/phone/settings/CallBarringChangePasswordDialog;I)V

    goto :goto_0

    .line 185
    .end local v2    # "errorid":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 186
    const/16 v2, 0xc8

    .restart local v2    # "errorid":I
    goto :goto_1

    .line 188
    .end local v2    # "errorid":I
    :cond_1
    const/16 v2, 0x12c

    .restart local v2    # "errorid":I
    goto :goto_1

    .line 192
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    const/16 v4, 0x190

    # invokes: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->showErrDialog(I)V
    invoke-static {v3, v4}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$400(Lcom/android/phone/settings/CallBarringChangePasswordDialog;I)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    # getter for: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$500(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringChangePasswordDialog$1;->this$0:Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    # getter for: Lcom/android/phone/settings/CallBarringChangePasswordDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->access$500(Lcom/android/phone/settings/CallBarringChangePasswordDialog;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b048d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

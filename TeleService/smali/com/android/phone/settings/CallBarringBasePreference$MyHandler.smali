.class Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringBasePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallBarringBasePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CALLBARRING_STATE:I = 0x0

.field private static final MESSAGE_SET_CALLBARRING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarringBasePreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/CallBarringBasePreference;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/CallBarringBasePreference;Lcom/android/phone/settings/CallBarringBasePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;
    .param p2, "x1"    # Lcom/android/phone/settings/CallBarringBasePreference$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;-><init>(Lcom/android/phone/settings/CallBarringBasePreference;)V

    return-void
.end method

.method private handleGetCallBarringResponse(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 263
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 264
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # setter for: Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z
    invoke-static {v6, v9}, Lcom/android/phone/settings/CallBarringBasePreference;->access$902(Lcom/android/phone/settings/CallBarringBasePreference;Z)Z

    .line 269
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 270
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_0

    .line 271
    const/16 v2, 0x2bc

    .line 277
    .local v2, "errorid":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$700(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/android/phone/settings/CallBarringInterface;->setErrorState(I)V

    .line 280
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-interface {v6, v7, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :goto_1
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-nez v6, :cond_5

    .line 326
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-interface {v6, v7, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 330
    :goto_2
    return-void

    .line 272
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_1

    .line 273
    const/16 v2, 0x320

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 275
    .end local v2    # "errorid":I
    :cond_1
    const/16 v2, 0x12c

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 292
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :cond_2
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v6, v10}, Lcom/android/phone/settings/CallBarringBasePreference;->setEnabled(Z)V

    .line 293
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    .line 294
    .local v3, "ints":[I
    if-eqz v3, :cond_4

    array-length v6, v3

    if-lez v6, :cond_4

    .line 295
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # setter for: Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z
    invoke-static {v6, v10}, Lcom/android/phone/settings/CallBarringBasePreference;->access$902(Lcom/android/phone/settings/CallBarringBasePreference;Z)Z

    .line 296
    aget v5, v3, v9

    .line 298
    .local v5, "value":I
    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/CallBarringBasePreference;->access$1000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  Current serviceClass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mServiceClass:I
    invoke-static {v8}, Lcom/android/phone/settings/CallBarringBasePreference;->access$1100(Lcom/android/phone/settings/CallBarringBasePreference;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mServiceClass:I
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$1100(Lcom/android/phone/settings/CallBarringBasePreference;)I

    move-result v6

    and-int/2addr v5, v6

    .line 302
    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/CallBarringBasePreference;->access$1000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "After value & mServiceClass = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v4, 0x0

    .line 307
    .local v4, "summary":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 308
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$200(Lcom/android/phone/settings/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0486

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v6, v9}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 315
    :goto_3
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v6, v4}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 311
    :cond_3
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$200(Lcom/android/phone/settings/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0487

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 312
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v6, v10}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 313
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$700(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/settings/CallBarringBasePreference;->access$400(Lcom/android/phone/settings/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/phone/settings/CallBarringInterface;->doCallBarringRefresh(Ljava/lang/String;)V

    goto :goto_3

    .line 317
    .end local v4    # "summary":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # setter for: Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z
    invoke-static {v6, v9}, Lcom/android/phone/settings/CallBarringBasePreference;->access$902(Lcom/android/phone/settings/CallBarringBasePreference;Z)Z

    goto/16 :goto_1

    .line 328
    .end local v3    # "ints":[I
    :cond_5
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-interface {v6, v7, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto/16 :goto_2

    .line 281
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .restart local v2    # "errorid":I
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 239
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 240
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 241
    const/16 v2, 0x2bc

    .line 247
    .local v2, "errorid":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$700(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/phone/settings/CallBarringInterface;->setErrorState(I)V

    .line 248
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 249
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 258
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :goto_1
    return-void

    .line 242
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 243
    const/16 v2, 0x320

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 245
    .end local v2    # "errorid":I
    :cond_1
    const/16 v2, 0x12c

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 256
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/settings/CallBarringBasePreference;->access$400(Lcom/android/phone/settings/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    # invokes: Lcom/android/phone/settings/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/settings/CallBarringBasePreference;->access$800(Lcom/android/phone/settings/CallBarringBasePreference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 221
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->handleGetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

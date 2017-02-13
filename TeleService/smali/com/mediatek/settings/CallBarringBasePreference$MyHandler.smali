.class Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringBasePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallBarringBasePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CALLBARRING_STATE:I = 0x0

.field private static final MESSAGE_SET_CALLBARRING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CallBarringBasePreference;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CallBarringBasePreference;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CallBarringBasePreference;Lcom/mediatek/settings/CallBarringBasePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/CallBarringBasePreference;
    .param p2, "x1"    # Lcom/mediatek/settings/CallBarringBasePreference$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;-><init>(Lcom/mediatek/settings/CallBarringBasePreference;)V

    return-void
.end method

.method private handleGetCallBarringResponse(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 300
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 301
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 302
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarringBasePreference;->mResult:Z
    invoke-static {v7, v10}, Lcom/mediatek/settings/CallBarringBasePreference;->access$902(Lcom/mediatek/settings/CallBarringBasePreference;Z)Z

    .line 304
    const-string v7, "Settings/CallBarringBasePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleGetCallBarringResponse: ar.exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 308
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_0

    .line 309
    const/16 v3, 0x2bc

    .line 315
    .local v3, "errorid":I
    :goto_0
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$700(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/mediatek/settings/CallBarringInterface;->setErrorState(I)V

    .line 319
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$300(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-interface {v7, v8, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "errorid":I
    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-nez v7, :cond_5

    .line 366
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$300(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-interface {v7, v8, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 370
    :goto_2
    return-void

    .line 310
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_1

    .line 311
    const/16 v3, 0x320

    .restart local v3    # "errorid":I
    goto :goto_0

    .line 313
    .end local v3    # "errorid":I
    :cond_1
    const/16 v3, 0x12c

    .restart local v3    # "errorid":I
    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v7, "Settings/CallBarringBasePreference"

    const-string v8, "BadTokenException"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 330
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v3    # "errorid":I
    :cond_2
    const-string v7, "Settings/CallBarringBasePreference"

    const-string v8, "handleGetCallBarringResponse is called without exception"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v7, v11}, Lcom/mediatek/settings/CallBarringBasePreference;->setEnabled(Z)V

    .line 334
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v4, v7

    check-cast v4, [I

    .line 335
    .local v4, "ints":[I
    if-eqz v4, :cond_4

    array-length v7, v4

    if-lez v7, :cond_4

    .line 336
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarringBasePreference;->mResult:Z
    invoke-static {v7, v11}, Lcom/mediatek/settings/CallBarringBasePreference;->access$902(Lcom/mediatek/settings/CallBarringBasePreference;Z)Z

    .line 337
    aget v6, v4, v10

    .line 339
    .local v6, "value":I
    const-string v7, "Settings/CallBarringBasePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  Current serviceClass = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I
    invoke-static {v9}, Lcom/mediatek/settings/CallBarringBasePreference;->access$1000(Lcom/mediatek/settings/CallBarringBasePreference;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mServiceClass:I
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$1000(Lcom/mediatek/settings/CallBarringBasePreference;)I

    move-result v7

    and-int/2addr v6, v7

    .line 342
    const-string v7, "Settings/CallBarringBasePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "After value & mServiceClass = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v5, 0x0

    .line 345
    .local v5, "summary":Ljava/lang/String;
    const-string v7, "Settings/CallBarringBasePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez v6, :cond_3

    .line 348
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$200(Lcom/mediatek/settings/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0486

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 349
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v7, v10}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 355
    :goto_3
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v7, v5}, Lcom/mediatek/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 351
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$200(Lcom/mediatek/settings/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0487

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v7, v11}, Lcom/mediatek/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 353
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$700(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/settings/CallBarringBasePreference;->access$400(Lcom/mediatek/settings/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/settings/CallBarringInterface;->doCallBarringRefresh(Ljava/lang/String;)V

    goto :goto_3

    .line 357
    .end local v5    # "summary":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_4
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # setter for: Lcom/mediatek/settings/CallBarringBasePreference;->mResult:Z
    invoke-static {v7, v10}, Lcom/mediatek/settings/CallBarringBasePreference;->access$902(Lcom/mediatek/settings/CallBarringBasePreference;Z)Z

    .line 359
    const-string v7, "Settings/CallBarringBasePreference"

    const-string v8, "handleGetCallBarringResponse ar.result get error"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 368
    .end local v4    # "ints":[I
    :cond_5
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringBasePreference;->access$300(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-interface {v7, v8, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto/16 :goto_2
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 271
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 272
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 274
    const-string v3, "Settings/CallBarringBasePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSetCallBarringResponse: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 278
    .local v1, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 279
    const/16 v2, 0x2bc

    .line 285
    .local v2, "errorid":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringBasePreference;->access$700(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mediatek/settings/CallBarringInterface;->setErrorState(I)V

    .line 286
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringBasePreference;->access$300(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-interface {v3, v4, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 287
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/mediatek/settings/CallBarringBasePreference;->access$300(Lcom/mediatek/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 296
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :goto_1
    return-void

    .line 280
    .restart local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 281
    const/16 v2, 0x320

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 283
    .end local v2    # "errorid":I
    :cond_1
    const/16 v2, 0x12c

    .restart local v2    # "errorid":I
    goto :goto_0

    .line 291
    .end local v1    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "errorid":I
    :cond_2
    const-string v3, "Settings/CallBarringBasePreference"

    const-string v4, "handleSetCallBarringResponse is called without exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v3, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    iget-object v4, p0, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringBasePreference;

    # getter for: Lcom/mediatek/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/settings/CallBarringBasePreference;->access$400(Lcom/mediatek/settings/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    # invokes: Lcom/mediatek/settings/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/settings/CallBarringBasePreference;->access$800(Lcom/mediatek/settings/CallBarringBasePreference;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 259
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->handleGetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 262
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringBasePreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

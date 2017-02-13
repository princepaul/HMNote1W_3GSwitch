.class Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MESSAGE_GET_CF:I = 0x0

.field static final MESSAGE_GET_CF_1:I = 0x1

.field static final MESSAGE_GET_CF_2:I = 0x2

.field static final MESSAGE_SET_CF:I = 0x3

.field static final MESSAGE_SET_CF_1:I = 0x4

.field static final MESSAGE_SET_CF_2:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/CallForwardEditPreference;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/CallForwardEditPreference;Lcom/android/phone/settings/CallForwardEditPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/CallForwardEditPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/CallForwardEditPreference$1;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/settings/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 230
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 235
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 238
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 240
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v9, v8, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v9, v10, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 308
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # invokes: Lcom/android/phone/settings/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->access$500(Lcom/android/phone/settings/CallForwardEditPreference;)V

    .line 309
    :cond_1
    return-void

    .line 232
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_2
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 243
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_4

    .line 244
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    const/16 v10, 0x190

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 246
    :cond_4
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v8

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 247
    .local v2, "cfInfoArray":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v8, v2

    if-nez v8, :cond_5

    .line 249
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/settings/CallForwardEditPreference;->setEnabled(Z)V

    .line 250
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    const/16 v10, 0x190

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 252
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v6, v2

    .local v6, "length":I
    :goto_2
    if-ge v4, v6, :cond_0

    .line 255
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->access$400(Lcom/android/phone/settings/CallForwardEditPreference;)I

    move-result v8

    aget-object v9, v2, v4

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    .line 257
    aget-object v5, v2, v4

    .line 258
    .local v5, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8, v5}, Lcom/android/phone/settings/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 260
    sget-boolean v8, Lmiui/os/Build;->IS_CTA_BUILD:Z

    if-eqz v8, :cond_6

    .line 261
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    if-nez v8, :cond_6

    .line 262
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 264
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "unconditional_call_forwarding"

    iget v9, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_8

    iget v8, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 278
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_0

    .line 286
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b046c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 288
    .local v7, "s":Ljava/lang/CharSequence;
    :goto_3
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-eqz v8, :cond_7

    .line 289
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_1

    .line 293
    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b01c2

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b01ba

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 297
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 298
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 252
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "s":Ljava/lang/CharSequence;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 280
    .restart local v5    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0462

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 281
    .restart local v7    # "s":Ljava/lang/CharSequence;
    goto :goto_3

    .line 283
    .end local v7    # "s":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v8, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0467

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 284
    .restart local v7    # "s":Ljava/lang/CharSequence;
    goto :goto_3

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 314
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/settings/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x3

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CallForwardEditPreference;->mSlotId:I
    invoke-static {v4}, Lcom/android/phone/settings/CallForwardEditPreference;->access$100(Lcom/android/phone/settings/CallForwardEditPreference;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v6, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/settings/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v1, v1, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    iget v2, p1, Landroid/os/Message;->what:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CallForwardEditPreference;->mSlotId:I
    invoke-static {v3}, Lcom/android/phone/settings/CallForwardEditPreference;->access$100(Lcom/android/phone/settings/CallForwardEditPreference;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;I)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget-object v0, v0, Lcom/android/phone/settings/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/CallForwardEditPreference;->isToggled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CallForwardEditPreference;->mButtonClicked:I
    invoke-static {v1}, Lcom/android/phone/settings/CallForwardEditPreference;->access$200(Lcom/android/phone/settings/CallForwardEditPreference;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x3

    :goto_1
    iget-object v2, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    iget-object v3, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    iget v5, v5, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    if-eq v5, v6, :cond_3

    :goto_2
    iget-object v5, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CallForwardEditPreference;->mHandler:Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;
    invoke-static {v5}, Lcom/android/phone/settings/CallForwardEditPreference;->access$300(Lcom/android/phone/settings/CallForwardEditPreference;)Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallForwardEditPreference;

    # getter for: Lcom/android/phone/settings/CallForwardEditPreference;->mSlotId:I
    invoke-static {v6}, Lcom/android/phone/settings/CallForwardEditPreference;->access$100(Lcom/android/phone/settings/CallForwardEditPreference;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->setCallForwardingOption(Lcom/android/internal/telephony/Phone;IILjava/lang/String;ILandroid/os/Message;I)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    const/16 v4, 0x14

    goto :goto_2

    .line 220
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

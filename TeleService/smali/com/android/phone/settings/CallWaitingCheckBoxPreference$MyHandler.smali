.class Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MESSAGE_GET_CALL_WAITING:I = 0x0

.field static final MESSAGE_GET_CALL_WAITING_1:I = 0x1

.field static final MESSAGE_GET_CALL_WAITING_2:I = 0x2

.field static final MESSAGE_SET_CALL_WAITING:I = 0x3

.field static final MESSAGE_SET_CALL_WAITING_1:I = 0x4

.field static final MESSAGE_SET_CALL_WAITING_2:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 156
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v6, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 164
    :cond_0
    :goto_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v4, v5, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 191
    :cond_1
    :goto_1
    return-void

    .line 160
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-interface {v3, v6, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 173
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    const/16 v5, 0x190

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 180
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 185
    .local v1, "cwArray":[I
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    const/4 v3, 0x0

    aget v3, v1, v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "CallWaitingCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCallWaitingResponse: improper result: err ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    move v3, v5

    .line 185
    goto :goto_2
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    .line 194
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 196
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$300(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$300(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$200(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 145
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$300(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    # getter for: Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;
    invoke-static {v3}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->access$200(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0

    .line 130
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

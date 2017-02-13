.class Lcom/android/phone/settings/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MESSAGE_GET_CLIR:I = 0x0

.field static final MESSAGE_GET_CLIR_1:I = 0x1

.field static final MESSAGE_GET_CLIR_2:I = 0x2

.field static final MESSAGE_SET_CLIR:I = 0x3

.field static final MESSAGE_SET_CLIR_1:I = 0x4

.field static final MESSAGE_SET_CLIR_2:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/CLIRListPreference;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/CLIRListPreference;Lcom/android/phone/settings/CLIRListPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/CLIRListPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/CLIRListPreference$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/settings/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x190

    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 155
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/settings/CLIRListPreference;->access$300(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/settings/CLIRListPreference;->clirArray:[I

    .line 161
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/settings/CLIRListPreference;->access$300(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 179
    :goto_1
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/settings/CLIRListPreference;->access$300(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/settings/CLIRListPreference;->access$300(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 167
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 168
    .local v1, "clirArray":[I
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 169
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v2}, Lcom/android/phone/settings/CLIRListPreference;->access$300(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/settings/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_1
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    .line 182
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 184
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/settings/CLIRListPreference;->access$200(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/settings/CLIRListPreference;->access$200(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;
    invoke-static {v1}, Lcom/android/phone/settings/CLIRListPreference;->access$100(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 143
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/settings/CLIRListPreference;->access$200(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/settings/CLIRListPreference;

    # getter for: Lcom/android/phone/settings/CLIRListPreference;->mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/settings/CLIRListPreference;->access$100(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 129
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

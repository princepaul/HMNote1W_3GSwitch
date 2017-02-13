.class Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringResetPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallBarringResetPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SET_CALLBARRING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarringResetPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/settings/CallBarringResetPreference;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/settings/CallBarringResetPreference;Lcom/android/phone/settings/CallBarringResetPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/settings/CallBarringResetPreference;
    .param p2, "x1"    # Lcom/android/phone/settings/CallBarringResetPreference$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;-><init>(Lcom/android/phone/settings/CallBarringResetPreference;)V

    return-void
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 169
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 170
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    .line 176
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 177
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_1

    .line 178
    const/16 v3, 0x2bc

    .line 184
    .local v3, "errorid":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringResetPreference;->access$300(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/android/phone/settings/CallBarringInterface;->setErrorState(I)V

    .line 185
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringResetPreference;->access$400(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-interface {v6, v7, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 205
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "errorid":I
    :cond_0
    :goto_1
    return-void

    .line 179
    .restart local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_2

    .line 180
    const/16 v3, 0x320

    .restart local v3    # "errorid":I
    goto :goto_0

    .line 182
    .end local v3    # "errorid":I
    :cond_2
    const/16 v3, 0x12c

    .restart local v3    # "errorid":I
    goto :goto_0

    .line 191
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "errorid":I
    :cond_3
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringResetPreference;->access$300(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v6

    instance-of v6, v6, Lcom/android/phone/settings/CallBarring;

    if-eqz v6, :cond_4

    .line 192
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringResetPreference;->access$300(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/CallBarring;

    .line 193
    .local v1, "cb":Lcom/android/phone/settings/CallBarring;
    invoke-virtual {v1}, Lcom/android/phone/settings/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 194
    .local v5, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v6, "all_outing_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/settings/CallBarringBasePreference;

    .line 197
    .local v4, "mCallAllOutButton":Lcom/android/phone/settings/CallBarringBasePreference;
    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v1, v7}, Lcom/android/phone/settings/CallBarring;->resetIndex(I)V

    .line 199
    invoke-virtual {v4, v1, v7}, Lcom/android/phone/settings/CallBarringBasePreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_1

    .line 202
    .end local v1    # "cb":Lcom/android/phone/settings/CallBarring;
    .end local v4    # "mCallAllOutButton":Lcom/android/phone/settings/CallBarringBasePreference;
    .end local v5    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v6}, Lcom/android/phone/settings/CallBarringResetPreference;->access$300(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/phone/settings/CallBarringInterface;->doCancelAllState()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v0}, Lcom/android/phone/settings/CallBarringResetPreference;->access$400(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 160
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

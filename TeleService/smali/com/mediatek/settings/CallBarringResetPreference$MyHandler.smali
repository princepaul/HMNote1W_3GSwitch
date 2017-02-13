.class Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringResetPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallBarringResetPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SET_CALLBARRING_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CallBarringResetPreference;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/CallBarringResetPreference;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/CallBarringResetPreference;Lcom/mediatek/settings/CallBarringResetPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/CallBarringResetPreference;
    .param p2, "x1"    # Lcom/mediatek/settings/CallBarringResetPreference$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;-><init>(Lcom/mediatek/settings/CallBarringResetPreference;)V

    return-void
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 207
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 208
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 210
    const-string v7, "CallBarringResetPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleSetCallBarringResponse: ar.exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 215
    .local v2, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_1

    .line 216
    const/16 v3, 0x2bc

    .line 222
    .local v3, "errorid":I
    :goto_0
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringResetPreference;->access$300(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/mediatek/settings/CallBarringInterface;->setErrorState(I)V

    .line 223
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringResetPreference;->access$400(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    invoke-interface {v7, v8, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 245
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "errorid":I
    :cond_0
    :goto_1
    return-void

    .line 217
    .restart local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_2

    .line 218
    const/16 v3, 0x320

    .restart local v3    # "errorid":I
    goto :goto_0

    .line 220
    .end local v3    # "errorid":I
    :cond_2
    const/16 v3, 0x12c

    .restart local v3    # "errorid":I
    goto :goto_0

    .line 226
    .end local v2    # "ce":Lcom/android/internal/telephony/CommandException;
    .end local v3    # "errorid":I
    :cond_3
    const-string v7, "CallBarringResetPreference"

    const-string v8, "handleSetCallBarringResponse is called without exception"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringResetPreference;->access$300(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v7

    instance-of v7, v7, Lcom/mediatek/settings/CallBarring;

    if-eqz v7, :cond_4

    .line 230
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringResetPreference;->access$300(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/CallBarring;

    .line 231
    .local v1, "cb":Lcom/mediatek/settings/CallBarring;
    invoke-virtual {v1}, Lcom/mediatek/settings/CallBarring;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "call_barring"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFragment;

    .line 233
    .local v4, "fragment":Landroid/preference/PreferenceFragment;
    invoke-virtual {v4}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 234
    .local v6, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v7, "all_outing_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/settings/CallBarringBasePreference;

    .line 237
    .local v5, "mCallAllOutButton":Lcom/mediatek/settings/CallBarringBasePreference;
    if-eqz v5, :cond_0

    .line 238
    invoke-virtual {v1, v9}, Lcom/mediatek/settings/CallBarring;->resetIndex(I)V

    .line 239
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mSimId:I
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringResetPreference;->access$500(Lcom/mediatek/settings/CallBarringResetPreference;)I

    move-result v7

    invoke-virtual {v5, v1, v9, v7}, Lcom/mediatek/settings/CallBarringBasePreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_1

    .line 242
    .end local v1    # "cb":Lcom/mediatek/settings/CallBarring;
    .end local v4    # "fragment":Landroid/preference/PreferenceFragment;
    .end local v5    # "mCallAllOutButton":Lcom/mediatek/settings/CallBarringBasePreference;
    .end local v6    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_4
    iget-object v7, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/mediatek/settings/CallBarringInterface;
    invoke-static {v7}, Lcom/mediatek/settings/CallBarringResetPreference;->access$300(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/mediatek/settings/CallBarringInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/settings/CallBarringInterface;->doCancelAllState()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    # getter for: Lcom/mediatek/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v0}, Lcom/mediatek/settings/CallBarringResetPreference;->access$400(Lcom/mediatek/settings/CallBarringResetPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->this$0:Lcom/mediatek/settings/CallBarringResetPreference;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 198
    invoke-direct {p0, p1}, Lcom/mediatek/settings/CallBarringResetPreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

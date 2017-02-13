.class Lcom/android/phone/settings/VoicemailSetting$4;
.super Landroid/os/Handler;
.source "VoicemailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/VoicemailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailSetting;)V
    .locals 0

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1015
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1016
    .local v1, "result":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1034
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iget-boolean v2, v2, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iget-object v2, v2, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iget-boolean v2, v2, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSetting;->access$300(Lcom/android/phone/settings/VoicemailSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1037
    .local v0, "done":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1039
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    const/16 v3, 0x643

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/settings/VoicemailSetting;->access$500(Lcom/android/phone/settings/VoicemailSetting;I)V

    .line 1040
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-virtual {v2}, Lcom/android/phone/settings/VoicemailSetting;->onRevertDone()V

    .line 1042
    :cond_3
    return-void

    .line 1018
    .end local v0    # "done":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iput-object v1, v2, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    goto :goto_0

    .line 1022
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/settings/VoicemailSetting$4;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # getter for: Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/settings/VoicemailSetting;->access$200(Lcom/android/phone/settings/VoicemailSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1034
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1016
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

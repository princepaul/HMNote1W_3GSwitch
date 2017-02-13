.class Lcom/android/phone/settings/VoicemailSetting$3;
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
    .line 952
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 955
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 956
    .local v4, "result":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 957
    .local v1, "done":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 999
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1001
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # getter for: Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSetting;->access$200(Lcom/android/phone/settings/VoicemailSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1002
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    const/16 v6, 0x641

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/settings/VoicemailSetting;->access$500(Lcom/android/phone/settings/VoicemailSetting;I)V

    .line 1004
    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSetting;->access$600(Lcom/android/phone/settings/VoicemailSetting;)V

    .line 1006
    :cond_2
    return-void

    .line 959
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iput-object v4, v7, Lcom/android/phone/settings/VoicemailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 960
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iget-object v8, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/settings/VoicemailSetting;->access$100(Lcom/android/phone/settings/VoicemailSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    iput-boolean v5, v7, Lcom/android/phone/settings/VoicemailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 963
    const/4 v1, 0x1

    .line 964
    goto :goto_0

    .line 966
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # getter for: Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/phone/settings/VoicemailSetting;->access$200(Lcom/android/phone/settings/VoicemailSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 973
    :cond_4
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->checkForwardingCompleted()Z
    invoke-static {v7}, Lcom/android/phone/settings/VoicemailSetting;->access$300(Lcom/android/phone/settings/VoicemailSetting;)Z

    move-result v0

    .line 974
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 975
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/settings/VoicemailSetting;->access$400(Lcom/android/phone/settings/VoicemailSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 977
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-virtual {v5}, Lcom/android/phone/settings/VoicemailSetting;->setVMNumberWithCarrier()V

    goto :goto_0

    .line 980
    :cond_5
    iget-object v7, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iput-boolean v5, v7, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 981
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # getter for: Lcom/android/phone/settings/VoicemailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/settings/VoicemailSetting;->access$200(Lcom/android/phone/settings/VoicemailSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 983
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 984
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 985
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 988
    iget-object v5, p0, Lcom/android/phone/settings/VoicemailSetting$3;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iput-boolean v6, v5, Lcom/android/phone/settings/VoicemailSetting;->mFwdChangesRequireRollback:Z

    .line 992
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    const/4 v1, 0x1

    .line 993
    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

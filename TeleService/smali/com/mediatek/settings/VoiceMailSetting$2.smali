.class Lcom/mediatek/settings/VoiceMailSetting$2;
.super Landroid/os/Handler;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/VoiceMailSetting;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 952
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 953
    .local v4, "result":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 954
    .local v1, "done":Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1008
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1010
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "All VM provider related changes done"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->access$200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1013
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    const/16 v6, 0x259

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/mediatek/settings/VoiceMailSetting;->access$500(Lcom/mediatek/settings/VoiceMailSetting;I)V

    .line 1015
    :cond_1
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->access$600(Lcom/mediatek/settings/VoiceMailSetting;)V

    .line 1017
    :cond_2
    return-void

    .line 956
    :pswitch_0
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iput-object v4, v7, Lcom/mediatek/settings/VoiceMailSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 957
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget-object v8, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/settings/VoiceMailSetting;->access$100(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    iput-boolean v5, v7, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    .line 959
    const-string v5, "Settings/VoiceMailSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VM change complete msg, VM change done = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget-boolean v7, v7, Lcom/mediatek/settings/VoiceMailSetting;->mVMChangeCompletedSuccesfully:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v1, 0x1

    .line 963
    goto :goto_0

    .line 965
    :pswitch_1
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->access$200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 968
    const-string v7, "Settings/VoiceMailSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :goto_1
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->checkForwardingCompleted()Z
    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->access$300(Lcom/mediatek/settings/VoiceMailSetting;)Z

    move-result v0

    .line 977
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 978
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # invokes: Lcom/mediatek/settings/VoiceMailSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/settings/VoiceMailSetting;->access$400(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 980
    const-string v5, "Settings/VoiceMailSetting"

    const-string v6, "Overall fwd changes completed ok, starting vm change"

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-virtual {v5}, Lcom/mediatek/settings/VoiceMailSetting;->setVMNumberWithCarrier()V

    goto/16 :goto_0

    .line 973
    .end local v0    # "completed":Z
    :cond_4
    const-string v7, "Settings/VoiceMailSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Success in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 985
    .restart local v0    # "completed":Z
    :cond_5
    const-string v7, "Settings/VoiceMailSetting"

    const-string v8, "Overall fwd changes completed, failure"

    invoke-static {v7, v8}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v7, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iput-boolean v5, v7, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 988
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/mediatek/settings/VoiceMailSetting;->access$200(Lcom/mediatek/settings/VoiceMailSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 990
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 991
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 992
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_6

    .line 995
    const-string v5, "Settings/VoiceMailSetting"

    const-string v7, "Rollback will be required"

    invoke-static {v5, v7}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v5, p0, Lcom/mediatek/settings/VoiceMailSetting$2;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iput-boolean v6, v5, Lcom/mediatek/settings/VoiceMailSetting;->mFwdChangesRequireRollback:Z

    .line 1001
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_7
    const/4 v1, 0x1

    .line 1002
    goto/16 :goto_0

    .line 954
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

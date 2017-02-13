.class Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;
.super Landroid/os/Handler;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$MyHandler;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/MiuiAdnRecord;>;"
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 123
    .local v0, "response":Landroid/os/Message;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 124
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

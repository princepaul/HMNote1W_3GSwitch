.class Lcom/android/phone/settings/VoicemailSetting$2;
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
    .line 783
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSetting$2;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 786
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 787
    .local v0, "result":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 792
    :goto_0
    return-void

    .line 789
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting$2;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/settings/VoicemailSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 787
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method

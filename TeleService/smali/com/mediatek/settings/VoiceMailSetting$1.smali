.class Lcom/mediatek/settings/VoiceMailSetting$1;
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
    .line 759
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$1;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 762
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 763
    .local v0, "result":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 770
    :goto_0
    return-void

    .line 765
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$1;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/settings/VoiceMailSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 763
    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method

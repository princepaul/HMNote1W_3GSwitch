.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;
.super Landroid/os/Handler;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 171
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->mIsDataConnectActing:Z
    invoke-static {v0, v1}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$402(Lcom/android/phone/settings/MultiSimInfoEditorActivity;Z)Z

    .line 172
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    invoke-virtual {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dismissProgressDialog()V

    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$3;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity;

    # invokes: Lcom/android/phone/settings/MultiSimInfoEditorActivity;->dealWithSwitchComplete()V
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity;->access$500(Lcom/android/phone/settings/MultiSimInfoEditorActivity;)V

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_1
    .end sparse-switch
.end method

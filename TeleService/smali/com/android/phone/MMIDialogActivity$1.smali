.class Lcom/android/phone/MMIDialogActivity$1;
.super Landroid/os/Handler;
.source "MMIDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MMIDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MMIDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/MMIDialogActivity$1;->this$0:Lcom/android/phone/MMIDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity$1;->this$0:Lcom/android/phone/MMIDialogActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    # invokes: Lcom/android/phone/MMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    invoke-static {v1, v0}, Lcom/android/phone/MMIDialogActivity;->access$000(Lcom/android/phone/MMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V

    goto :goto_0

    .line 73
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity$1;->this$0:Lcom/android/phone/MMIDialogActivity;

    # invokes: Lcom/android/phone/MMIDialogActivity;->onMMICancel()V
    invoke-static {v0}, Lcom/android/phone/MMIDialogActivity;->access$100(Lcom/android/phone/MMIDialogActivity;)V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x34 -> :sswitch_0
        0x35 -> :sswitch_1
        0x98 -> :sswitch_0
        0xfc -> :sswitch_0
        0x160 -> :sswitch_0
    .end sparse-switch
.end method

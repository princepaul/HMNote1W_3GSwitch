.class Lcom/android/phone/SimCardPickDialog$1;
.super Landroid/os/Handler;
.source "SimCardPickDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimCardPickDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimCardPickDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/SimCardPickDialog;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/SimCardPickDialog$1;->this$0:Lcom/android/phone/SimCardPickDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog$1;->this$0:Lcom/android/phone/SimCardPickDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/phone/SimCardPickDialog;->updateSimCardView(II)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/SimCardPickDialog;->access$000(Lcom/android/phone/SimCardPickDialog;II)V

    .line 71
    :cond_0
    return-void
.end method

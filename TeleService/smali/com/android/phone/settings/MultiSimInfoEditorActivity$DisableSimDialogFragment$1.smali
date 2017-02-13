.class Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;
.super Ljava/lang/Object;
.source "MultiSimInfoEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;->this$0:Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    # getter for: Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->access$600(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 800
    return-void
.end method

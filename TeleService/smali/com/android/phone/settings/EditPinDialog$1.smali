.class Lcom/android/phone/settings/EditPinDialog$1;
.super Ljava/lang/Object;
.source "EditPinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/settings/EditPinDialog$Mode;Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditPinDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditPinDialog;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/settings/EditPinDialog$1;->this$0:Lcom/android/phone/settings/EditPinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog$1;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    invoke-static {v0}, Lcom/android/phone/settings/EditPinDialog;->access$100(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/settings/EditPinDialog$1;->this$0:Lcom/android/phone/settings/EditPinDialog;

    # getter for: Lcom/android/phone/settings/EditPinDialog;->mListener:Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;
    invoke-static {v0}, Lcom/android/phone/settings/EditPinDialog;->access$100(Lcom/android/phone/settings/EditPinDialog;)Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/EditPinDialog$1;->this$0:Lcom/android/phone/settings/EditPinDialog;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/phone/settings/EditPinDialog$DialogClosedListener;->OnDialogClose(Lcom/android/phone/settings/EditPinDialog;Z)V

    .line 107
    :cond_0
    return-void
.end method

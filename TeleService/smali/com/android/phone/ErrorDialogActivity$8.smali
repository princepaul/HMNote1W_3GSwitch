.class Lcom/android/phone/ErrorDialogActivity$8;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showDropVoiceCallDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$8;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$8;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 186
    return-void
.end method

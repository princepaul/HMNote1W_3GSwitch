.class Lcom/android/phone/ErrorDialogActivity$5;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V
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
    .line 116
    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$5;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$5;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # invokes: Lcom/android/phone/ErrorDialogActivity;->dontAddVoiceMailNumber()V
    invoke-static {v0}, Lcom/android/phone/ErrorDialogActivity;->access$000(Lcom/android/phone/ErrorDialogActivity;)V

    .line 120
    return-void
.end method

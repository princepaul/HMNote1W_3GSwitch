.class Lcom/android/phone/ErrorDialogActivity$6;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 167
    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$6;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$6;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/ErrorDialogActivity;->access$200(Lcom/android/phone/ErrorDialogActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ErrorDialogActivity$6;->this$0:Lcom/android/phone/ErrorDialogActivity;

    # getter for: Lcom/android/phone/ErrorDialogActivity;->mSlot:I
    invoke-static {v1}, Lcom/android/phone/ErrorDialogActivity;->access$300(Lcom/android/phone/ErrorDialogActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/vt/VTCallUtils;->makeVoiceReCall(Ljava/lang/String;I)V

    .line 173
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$6;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/ErrorDialogActivity;->finish()V

    .line 174
    return-void
.end method

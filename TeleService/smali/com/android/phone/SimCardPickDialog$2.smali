.class Lcom/android/phone/SimCardPickDialog$2;
.super Ljava/lang/Object;
.source "SimCardPickDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SimCardPickDialog;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Intent;)V
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
    .line 85
    iput-object p1, p0, Lcom/android/phone/SimCardPickDialog$2;->this$0:Lcom/android/phone/SimCardPickDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/SimCardPickDialog$2;->this$0:Lcom/android/phone/SimCardPickDialog;

    # invokes: Lcom/android/phone/SimCardPickDialog;->onCancelDialog()V
    invoke-static {v0}, Lcom/android/phone/SimCardPickDialog;->access$100(Lcom/android/phone/SimCardPickDialog;)V

    .line 89
    return-void
.end method

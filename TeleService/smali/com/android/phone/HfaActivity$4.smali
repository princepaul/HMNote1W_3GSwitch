.class Lcom/android/phone/HfaActivity$4;
.super Ljava/lang/Object;
.source "HfaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HfaActivity;->onHfaError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HfaActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HfaActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/HfaActivity$4;->this$0:Lcom/android/phone/HfaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/android/phone/HfaActivity$4;->this$0:Lcom/android/phone/HfaActivity;

    # invokes: Lcom/android/phone/HfaActivity;->onUserSkip()V
    invoke-static {v0}, Lcom/android/phone/HfaActivity;->access$200(Lcom/android/phone/HfaActivity;)V

    .line 119
    return-void
.end method

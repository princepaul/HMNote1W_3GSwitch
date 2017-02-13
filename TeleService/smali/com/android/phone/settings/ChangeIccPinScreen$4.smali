.class Lcom/android/phone/settings/ChangeIccPinScreen$4;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/ChangeIccPinScreen;->displayPUKAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/ChangeIccPinScreen;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/phone/settings/ChangeIccPinScreen$4;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/phone/settings/ChangeIccPinScreen$4;->this$0:Lcom/android/phone/settings/ChangeIccPinScreen;

    # getter for: Lcom/android/phone/settings/ChangeIccPinScreen;->mPUKAlert:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/settings/ChangeIccPinScreen;->access$1300(Lcom/android/phone/settings/ChangeIccPinScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    return-void
.end method

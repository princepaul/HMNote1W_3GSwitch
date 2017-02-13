.class public Lcom/android/phone/ExitedEMCDialogActivity;
.super Landroid/app/Activity;
.source "ExitedEMCDialogActivity.java"


# static fields
.field public static final DIALOG_INFO:Ljava/lang/String; = "dialog_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showExitedECMDialog()V
    .locals 6

    .prologue
    .line 24
    const v4, 0x7f0b031f

    invoke-virtual {p0, v4}, Lcom/android/phone/ExitedEMCDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "msg":Ljava/lang/String;
    new-instance v1, Lcom/android/phone/ExitedEMCDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ExitedEMCDialogActivity$1;-><init>(Lcom/android/phone/ExitedEMCDialogActivity;)V

    .line 35
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/ExitedEMCDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ExitedEMCDialogActivity$2;-><init>(Lcom/android/phone/ExitedEMCDialogActivity;)V

    .line 42
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b018f

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 46
    .local v2, "exitedECMDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 47
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 52
    const/4 v0, 0x0

    sget v1, Lmiui/R$anim;->dialog_exit:I

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/ExitedEMCDialogActivity;->overridePendingTransition(II)V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-direct {p0}, Lcom/android/phone/ExitedEMCDialogActivity;->showExitedECMDialog()V

    .line 21
    return-void
.end method

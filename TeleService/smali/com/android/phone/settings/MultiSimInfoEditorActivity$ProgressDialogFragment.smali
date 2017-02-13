.class public Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mMsgId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    .line 432
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 434
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    .line 435
    iput p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    .line 436
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 441
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget v1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$ProgressDialogFragment;->mMsgId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 445
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 446
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 447
    return-object v0
.end method

.class public Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;
.super Landroid/app/DialogFragment;
.source "MultiSimInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MultiSimInfoEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableSimDialogFragment"
.end annotation


# instance fields
.field private mSimHandler:Landroid/os/Handler;

.field private mSimName:Ljava/lang/String;

.field private mSimSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 756
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    .line 758
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "simName"    # Ljava/lang/String;
    .param p3, "h"    # Landroid/os/Handler;

    .prologue
    .line 760
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    .line 761
    iput p1, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    .line 762
    iput-object p2, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimName:Ljava/lang/String;

    .line 763
    iput-object p3, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimHandler:Landroid/os/Handler;

    .line 764
    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->setCancelable(Z)V

    .line 770
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 774
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 775
    const/4 v1, 0x0

    .line 776
    .local v1, "canDisable":Z
    const/4 v2, 0x0

    .line 777
    .local v2, "message":Ljava/lang/String;
    const v3, 0x7f0b04db

    .line 779
    .local v3, "negativeBtnText":I
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSlotId()I

    move-result v4

    iget v5, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    if-eq v4, v5, :cond_0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v4

    iget v5, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimSlotId:I

    if-ne v4, v5, :cond_2

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 791
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 792
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b04d8

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 793
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 794
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 795
    if-eqz v1, :cond_1

    .line 796
    const v4, 0x104000a

    new-instance v5, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$1;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 803
    :cond_1
    new-instance v4, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment$2;-><init>(Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 809
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 784
    .end local v0    # "alertDialog":Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v1, 0x1

    .line 785
    invoke-virtual {p0}, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04d9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/phone/settings/MultiSimInfoEditorActivity$DisableSimDialogFragment;->mSimName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 788
    const/high16 v3, 0x1040000

    goto :goto_0
.end method

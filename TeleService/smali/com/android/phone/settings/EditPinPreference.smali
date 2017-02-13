.class public Lcom/android/phone/settings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;

.field private shouldHideButtons:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/EditPinPreference;->shouldHideButtons:Z

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 62
    const v1, 0x7f04002f

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/EditPinPreference;->setDialogLayoutResource(I)V

    .line 64
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "dialog":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/phone/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 69
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/phone/settings/EditPinPreference;->mPinListener:Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/phone/settings/EditPinPreference;->mPinListener:Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/phone/settings/EditPinPreference;Z)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 85
    iget-boolean v0, p0, Lcom/android/phone/settings/EditPinPreference;->shouldHideButtons:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/settings/EditPinPreference;->mPinListener:Lcom/android/phone/settings/EditPinPreference$OnPinEnteredListener;

    .line 45
    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

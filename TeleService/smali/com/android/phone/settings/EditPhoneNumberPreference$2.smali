.class Lcom/android/phone/settings/EditPhoneNumberPreference$2;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentButton:Landroid/widget/Button;

.field private neutralButton:Landroid/widget/Button;

.field private positiveButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditPhoneNumberPreference;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    .line 260
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->positiveButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->neutralButton:Landroid/widget/Button;

    if-nez v2, :cond_3

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 262
    .local v1, "dialog":Landroid/app/AlertDialog;
    if-nez v1, :cond_2

    .line 284
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    :goto_0
    return-void

    .line 265
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->positiveButton:Landroid/widget/Button;

    .line 266
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->neutralButton:Landroid/widget/Button;

    .line 268
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I
    invoke-static {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$000(Lcom/android/phone/settings/EditPhoneNumberPreference;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 269
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z
    invoke-static {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$100(Lcom/android/phone/settings/EditPhoneNumberPreference;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 270
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->positiveButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->currentButton:Landroid/widget/Button;

    .line 275
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->currentButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_7

    .line 280
    :cond_5
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->currentButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 272
    .end local v0    # "content":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->neutralButton:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->currentButton:Landroid/widget/Button;

    goto :goto_1

    .line 282
    .restart local v0    # "content":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$2;->currentButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 256
    return-void
.end method

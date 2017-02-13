.class Lcom/android/phone/settings/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditPhoneNumberPreference;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 156
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "mPhoneNumber":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 159
    .local v2, "positiveButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    check-cast v3, Landroid/app/AlertDialog;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 160
    .local v1, "neutralButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mConfirmationMode:I
    invoke-static {v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$000(Lcom/android/phone/settings/EditPhoneNumberPreference;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$1;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mChecked:Z
    invoke-static {v3}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$100(Lcom/android/phone/settings/EditPhoneNumberPreference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    .end local v1    # "neutralButton":Landroid/widget/Button;
    .end local v2    # "positiveButton":Landroid/widget/Button;
    :cond_0
    :goto_0
    return v6

    .line 164
    .restart local v1    # "neutralButton":Landroid/widget/Button;
    .restart local v2    # "positiveButton":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

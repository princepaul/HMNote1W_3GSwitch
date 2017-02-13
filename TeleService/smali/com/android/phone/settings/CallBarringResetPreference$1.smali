.class Lcom/android/phone/settings/CallBarringResetPreference$1;
.super Ljava/lang/Object;
.source "CallBarringResetPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallBarringResetPreference;->doPreferenceClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarringResetPreference;

.field final synthetic val$textEntryView:Landroid/view/View;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallBarringResetPreference;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    iput-object p2, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 88
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 90
    .local v2, "passwordText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # invokes: Lcom/android/phone/settings/CallBarringResetPreference;->validatePassword(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/phone/settings/CallBarringResetPreference;->access$100(Lcom/android/phone/settings/CallBarringResetPreference;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringResetPreference;->access$200(Lcom/android/phone/settings/CallBarringResetPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "builder1":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringResetPreference;->access$200(Lcom/android/phone/settings/CallBarringResetPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b048f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 98
    const v3, 0x7f0b018f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 106
    .end local v0    # "builder1":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    # getter for: Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringResetPreference;->access$300(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/CallBarringInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringResetPreference$1;->this$0:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/settings/CallBarringResetPreference;->setCallState(Ljava/lang/String;)V

    goto :goto_0
.end method

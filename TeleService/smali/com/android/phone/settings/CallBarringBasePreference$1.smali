.class Lcom/android/phone/settings/CallBarringBasePreference$1;
.super Ljava/lang/Object;
.source "CallBarringBasePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallBarringBasePreference;->doPreferenceClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallBarringBasePreference;

.field final synthetic val$textEntryView:Landroid/view/View;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallBarringBasePreference;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object p2, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 124
    .local v2, "passwordText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # invokes: Lcom/android/phone/settings/CallBarringBasePreference;->validatePassword(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/phone/settings/CallBarringBasePreference;->access$100(Lcom/android/phone/settings/CallBarringBasePreference;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$200(Lcom/android/phone/settings/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "builder1":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$200(Lcom/android/phone/settings/CallBarringBasePreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b048f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 133
    const v3, 0x7f0b018f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 145
    .end local v0    # "builder1":Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v3}, Lcom/android/phone/settings/CallBarringBasePreference;->access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-interface {v3, v4, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 139
    iget-object v3, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/settings/CallBarringBasePreference;->access$400(Lcom/android/phone/settings/CallBarringBasePreference;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/CallBarringBasePreference$1;->this$0:Lcom/android/phone/settings/CallBarringBasePreference;

    # getter for: Lcom/android/phone/settings/CallBarringBasePreference;->mCurrentClickState:Z
    invoke-static {v5}, Lcom/android/phone/settings/CallBarringBasePreference;->access$500(Lcom/android/phone/settings/CallBarringBasePreference;)Z

    move-result v5

    # invokes: Lcom/android/phone/settings/CallBarringBasePreference;->setCallState(Ljava/lang/String;ZLjava/lang/String;)V
    invoke-static {v3, v4, v5, v1}, Lcom/android/phone/settings/CallBarringBasePreference;->access$600(Lcom/android/phone/settings/CallBarringBasePreference;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

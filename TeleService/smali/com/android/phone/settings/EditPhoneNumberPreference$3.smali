.class Lcom/android/phone/settings/EditPhoneNumberPreference$3;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
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
    .line 290
    iput-object p1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$200(Lcom/android/phone/settings/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$200(Lcom/android/phone/settings/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$300(Lcom/android/phone/settings/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/EditPhoneNumberPreference$3;->this$0:Lcom/android/phone/settings/EditPhoneNumberPreference;

    # getter for: Lcom/android/phone/settings/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->access$400(Lcom/android/phone/settings/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    :cond_0
    return-void
.end method

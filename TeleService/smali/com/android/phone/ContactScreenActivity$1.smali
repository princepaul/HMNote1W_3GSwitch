.class Lcom/android/phone/ContactScreenActivity$1;
.super Ljava/lang/Object;
.source "ContactScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ContactScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactScreenActivity;

.field final synthetic val$editName:Landroid/widget/EditText;

.field final synthetic val$editPhoneNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/ContactScreenActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iput-object p2, p0, Lcom/android/phone/ContactScreenActivity$1;->val$editName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/ContactScreenActivity$1;->val$editPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v2, p0, Lcom/android/phone/ContactScreenActivity$1;->val$editName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/ContactScreenActivity;->mNewName:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v2, p0, Lcom/android/phone/ContactScreenActivity$1;->val$editPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/ContactScreenActivity;->mNewPhoneNumber:Ljava/lang/String;

    .line 69
    const-string v1, "ContactScreenActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v3, v3, Lcom/android/phone/ContactScreenActivity;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v3, v3, Lcom/android/phone/ContactScreenActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "ContactScreenActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " After edited Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v3, v3, Lcom/android/phone/ContactScreenActivity;->mNewName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v3, v3, Lcom/android/phone/ContactScreenActivity;->mNewPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NAME"

    iget-object v2, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v2, v2, Lcom/android/phone/ContactScreenActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "PHONE"

    iget-object v2, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v2, v2, Lcom/android/phone/ContactScreenActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v1, "NEWNAME"

    iget-object v2, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v2, v2, Lcom/android/phone/ContactScreenActivity;->mNewName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "NEWPHONE"

    iget-object v2, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    iget-object v2, v2, Lcom/android/phone/ContactScreenActivity;->mNewPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/ContactScreenActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object v1, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    invoke-virtual {v1}, Lcom/android/phone/ContactScreenActivity;->finish()V

    goto/16 :goto_0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/ContactScreenActivity$1;->this$0:Lcom/android/phone/ContactScreenActivity;

    invoke-virtual {v1}, Lcom/android/phone/ContactScreenActivity;->finish()V

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

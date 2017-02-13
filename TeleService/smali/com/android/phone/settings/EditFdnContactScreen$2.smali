.class Lcom/android/phone/settings/EditFdnContactScreen$2;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditFdnContactScreen;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/phone/settings/EditFdnContactScreen$2;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 344
    const/4 v0, 0x1

    .line 345
    .local v0, "enableButton":Z
    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$2;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # getter for: Lcom/android/phone/settings/EditFdnContactScreen;->mNameField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$200(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 348
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$2;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # getter for: Lcom/android/phone/settings/EditFdnContactScreen;->mNumberField:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$300(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 352
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$2;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # getter for: Lcom/android/phone/settings/EditFdnContactScreen;->mPin2Field:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$400(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 354
    const/4 v0, 0x0

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$2;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # getter for: Lcom/android/phone/settings/EditFdnContactScreen;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$500(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$2;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # getter for: Lcom/android/phone/settings/EditFdnContactScreen;->mOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$600(Lcom/android/phone/settings/EditFdnContactScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 359
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 340
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 335
    return-void
.end method

.class public Lcom/android/phone/ContactScreenActivity;
.super Landroid/app/Activity;
.source "ContactScreenActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactScreenActivity"


# instance fields
.field mName:Ljava/lang/String;

.field mNewName:Ljava/lang/String;

.field mNewPhoneNumber:Ljava/lang/String;

.field mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v5, 0x7f04000d

    invoke-virtual {p0, v5}, Lcom/android/phone/ContactScreenActivity;->setContentView(I)V

    .line 54
    const v5, 0x7f07000c

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/phone/ContactScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 55
    .local v1, "editName":Landroid/widget/EditText;
    const v5, 0x7f070017

    invoke-virtual {p0, v5}, Lcom/android/phone/ContactScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 56
    .local v2, "editPhoneNumber":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/android/phone/ContactScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 57
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/ContactScreenActivity;->mName:Ljava/lang/String;

    .line 58
    const-string v5, "PHONE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/ContactScreenActivity;->mPhoneNumber:Ljava/lang/String;

    .line 60
    iget-object v5, p0, Lcom/android/phone/ContactScreenActivity;->mName:Ljava/lang/String;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 61
    iget-object v5, p0, Lcom/android/phone/ContactScreenActivity;->mPhoneNumber:Ljava/lang/String;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 63
    new-instance v3, Lcom/android/phone/ContactScreenActivity$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/phone/ContactScreenActivity$1;-><init>(Lcom/android/phone/ContactScreenActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 88
    .local v3, "handler":Landroid/view/View$OnClickListener;
    const v5, 0x7f07001c

    invoke-virtual {p0, v5}, Lcom/android/phone/ContactScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v5, 0x7f07001b

    invoke-virtual {p0, v5}, Lcom/android/phone/ContactScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "editName":Landroid/widget/EditText;
    .end local v2    # "editPhoneNumber":Landroid/widget/EditText;
    .end local v3    # "handler":Landroid/view/View$OnClickListener;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ContactScreenActivity "

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/android/phone/settings/EditFdnContactScreen$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 307
    iput-object p1, p0, Lcom/android/phone/settings/EditFdnContactScreen$1;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 311
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$1;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0290

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b018f

    new-instance v2, Lcom/android/phone/settings/EditFdnContactScreen$1$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditFdnContactScreen$1$1;-><init>(Lcom/android/phone/settings/EditFdnContactScreen$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/settings/EditFdnContactScreen$1;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$1;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    # getter for: Lcom/android/phone/settings/EditFdnContactScreen;->mAddContact:Z
    invoke-static {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$100(Lcom/android/phone/settings/EditFdnContactScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Insert:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    :goto_1
    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->performActions(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    invoke-static {v1, v0}, Lcom/android/phone/settings/EditFdnContactScreen;->access$000(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Update:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    goto :goto_1

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$1;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    invoke-virtual {v0}, Lcom/android/phone/settings/EditFdnContactScreen;->finish()V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x7f07004a
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

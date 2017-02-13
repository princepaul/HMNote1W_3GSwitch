.class Lcom/android/phone/settings/EditFdnContactScreen$1$1;
.super Ljava/lang/Object;
.source "EditFdnContactScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditFdnContactScreen$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/settings/EditFdnContactScreen$1;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/EditFdnContactScreen$1;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/phone/settings/EditFdnContactScreen$1$1;->this$1:Lcom/android/phone/settings/EditFdnContactScreen$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/phone/settings/EditFdnContactScreen$1$1;->this$1:Lcom/android/phone/settings/EditFdnContactScreen$1;

    iget-object v0, v0, Lcom/android/phone/settings/EditFdnContactScreen$1;->this$0:Lcom/android/phone/settings/EditFdnContactScreen;

    sget-object v1, Lcom/android/phone/settings/EditFdnContactScreen$Actions;->Delete:Lcom/android/phone/settings/EditFdnContactScreen$Actions;

    # invokes: Lcom/android/phone/settings/EditFdnContactScreen;->performActions(Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V
    invoke-static {v0, v1}, Lcom/android/phone/settings/EditFdnContactScreen;->access$000(Lcom/android/phone/settings/EditFdnContactScreen;Lcom/android/phone/settings/EditFdnContactScreen$Actions;)V

    .line 318
    return-void
.end method

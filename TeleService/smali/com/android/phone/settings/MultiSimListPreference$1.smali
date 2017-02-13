.class Lcom/android/phone/settings/MultiSimListPreference$1;
.super Ljava/lang/Object;
.source "MultiSimListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/MultiSimListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MultiSimListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MultiSimListPreference;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/phone/settings/MultiSimListPreference$1;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$1;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    # setter for: Lcom/android/phone/settings/MultiSimListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/android/phone/settings/MultiSimListPreference;->access$002(Lcom/android/phone/settings/MultiSimListPreference;I)I

    .line 73
    iget-object v0, p0, Lcom/android/phone/settings/MultiSimListPreference$1;->this$0:Lcom/android/phone/settings/MultiSimListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/settings/MultiSimListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 76
    return-void
.end method

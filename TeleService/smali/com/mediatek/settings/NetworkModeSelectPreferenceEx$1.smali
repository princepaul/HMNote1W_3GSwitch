.class Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;
.super Ljava/lang/Object;
.source "NetworkModeSelectPreferenceEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder... onclick(),  mClickedDialogEntryIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    # getter for: Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I
    invoke-static {v2}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->access$000(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->access$100(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    # getter for: Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mItemStatus:Ljava/util/List;
    invoke-static {v0}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->access$200(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    const-string v1, "return"

    # invokes: Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->access$100(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    # setter for: Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->access$002(Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;I)I

    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx$1;->this$0:Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/settings/NetworkModeSelectPreferenceEx;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.class Lcom/mediatek/calloption/SimSelectionCallOptionHandler$2;
.super Ljava/lang/Object;
.source "SimSelectionCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 560
    const-string v0, "ReasonAskDismissDialog, onDismiss() is called"

    # invokes: Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->access$000(Ljava/lang/String;)V

    .line 561
    return-void
.end method

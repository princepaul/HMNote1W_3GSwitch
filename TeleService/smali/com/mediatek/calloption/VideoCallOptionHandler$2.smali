.class Lcom/mediatek/calloption/VideoCallOptionHandler$2;
.super Ljava/lang/Object;
.source "VideoCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/VideoCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/VideoCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/calloption/VideoCallOptionHandler$2;->this$0:Lcom/mediatek/calloption/VideoCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 178
    const-string v0, "3GSIMSelectDismiss, onDismiss() is called"

    # invokes: Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/calloption/VideoCallOptionHandler;->access$000(Ljava/lang/String;)V

    .line 179
    return-void
.end method

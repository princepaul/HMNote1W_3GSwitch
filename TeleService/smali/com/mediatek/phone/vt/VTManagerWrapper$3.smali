.class Lcom/mediatek/phone/vt/VTManagerWrapper$3;
.super Ljava/lang/Thread;
.source "VTManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTManagerWrapper;->savePeerPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/vt/VTManagerWrapper;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x7f

    const/16 v4, 0x7e

    .line 459
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$400(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->savePeerPhoto()Z

    move-result v0

    .line 460
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVTTakePeerPhotoClick(): VTManager.savePeerPhoto(), return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 461
    if-eqz v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$500(Lcom/mediatek/phone/vt/VTManagerWrapper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$500(Lcom/mediatek/phone/vt/VTManagerWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$500(Lcom/mediatek/phone/vt/VTManagerWrapper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$500(Lcom/mediatek/phone/vt/VTManagerWrapper;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 467
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$3;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0
.end method

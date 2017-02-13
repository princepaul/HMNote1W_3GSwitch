.class Lcom/mediatek/phone/vt/VTManagerWrapper$2;
.super Ljava/lang/Thread;
.source "VTManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/phone/vt/VTManagerWrapper;->switchCamera()V
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
    .line 417
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    const-string v2, "VTManager.switchCamera() begin !"

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mVTManager:Lcom/mediatek/vt/VTManager;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$400(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->switchCamera()Z

    move-result v0

    .line 421
    .local v0, "result":Z
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VTManager.switchCamera() result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$000(Lcom/mediatek/phone/vt/VTManagerWrapper;Ljava/lang/String;)V

    .line 422
    if-eqz v0, :cond_0

    .line 425
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    const/16 v2, 0x80

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    .line 429
    :goto_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # invokes: Lcom/mediatek/phone/vt/VTManagerWrapper;->pushVTManagerParams()V
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$200(Lcom/mediatek/phone/vt/VTManagerWrapper;)V

    .line 430
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTManagerWrapper$2;->this$0:Lcom/mediatek/phone/vt/VTManagerWrapper;

    # getter for: Lcom/mediatek/phone/vt/VTManagerWrapper;->mListener:Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;
    invoke-static {v1}, Lcom/mediatek/phone/vt/VTManagerWrapper;->access$100(Lcom/mediatek/phone/vt/VTManagerWrapper;)Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;

    move-result-object v1

    const/16 v2, 0x81

    invoke-interface {v1, v2}, Lcom/mediatek/phone/vt/VTManagerWrapper$Listener;->onVTStateChanged(I)V

    goto :goto_0
.end method

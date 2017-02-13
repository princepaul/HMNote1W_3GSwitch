.class Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;
.super Landroid/os/Handler;
.source "SimAssociateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimAssociateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calloption/SimAssociateHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/calloption/SimAssociateHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;->this$0:Lcom/mediatek/calloption/SimAssociateHandler;

    .line 123
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "number":Ljava/lang/String;
    const/4 v2, -0x1

    .line 130
    .local v2, "id":I
    const/4 v0, 0x0

    .line 131
    .local v0, "associateSims":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 132
    .local v1, "exist":Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v4, p0, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;->this$0:Lcom/mediatek/calloption/SimAssociateHandler;

    const-string v5, "+MSG_LOAD"

    invoke-virtual {v4, v5}, Lcom/mediatek/calloption/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;->this$0:Lcom/mediatek/calloption/SimAssociateHandler;

    const-string v5, "-MSG_LOADs"

    invoke-virtual {v4, v5}, Lcom/mediatek/calloption/SimAssociateHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v4, p0, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;->this$0:Lcom/mediatek/calloption/SimAssociateHandler;

    const-string v5, "MSG_EXIT"

    invoke-virtual {v4, v5}, Lcom/mediatek/calloption/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/calloption/SimAssociateHandler$MyHandler;->this$0:Lcom/mediatek/calloption/SimAssociateHandler;

    invoke-virtual {v4}, Lcom/mediatek/calloption/SimAssociateHandler;->load()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/mediatek/CellConnService/CellConnMgr$1;
.super Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;
.source "CellConnMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/CellConnMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/CellConnService/CellConnMgr;


# direct methods
.method constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {p0}, Lcom/mediatek/CellConnService/IPhoneStatesCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2
    .param p1, "nRet"    # I

    .prologue
    .line 181
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I
    invoke-static {v0, p1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$002(Lcom/mediatek/CellConnService/CellConnMgr;I)I

    .line 183
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->access$100(Lcom/mediatek/CellConnService/CellConnMgr;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback call service complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->access$200(Lcom/mediatek/CellConnService/CellConnMgr;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$100(Lcom/mediatek/CellConnService/CellConnMgr;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mIsVerifying:Z
    invoke-static {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$302(Lcom/mediatek/CellConnService/CellConnMgr;Z)Z

    .line 190
    return-void

    .line 187
    :cond_0
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback no callback to call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCompleteWithPrefer(II)V
    .locals 3
    .param p1, "nRet"    # I
    .param p2, "nPreferSlot"    # I

    .prologue
    .line 193
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback onComplete with PreferSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v0, "CellConnMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPhoneStatesCallback nRet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nPreferSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I
    invoke-static {v0, p1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$002(Lcom/mediatek/CellConnService/CellConnMgr;I)I

    .line 196
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mResult:I
    invoke-static {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$000(Lcom/mediatek/CellConnService/CellConnMgr;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I
    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->access$400(Lcom/mediatek/CellConnService/CellConnMgr;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 197
    const-string v0, "CellConnMgr"

    const-string v1, "fzw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I
    invoke-static {v0, p2}, Lcom/mediatek/CellConnService/CellConnMgr;->access$402(Lcom/mediatek/CellConnService/CellConnMgr;I)I

    .line 199
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I
    invoke-static {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$400(Lcom/mediatek/CellConnService/CellConnMgr;)I

    move-result v1

    const/16 v2, 0x12e

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mPreferSlot:I
    invoke-static {v0, p2}, Lcom/mediatek/CellConnService/CellConnMgr;->access$402(Lcom/mediatek/CellConnService/CellConnMgr;I)I

    .line 202
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->access$100(Lcom/mediatek/CellConnService/CellConnMgr;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback call service complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->access$200(Lcom/mediatek/CellConnService/CellConnMgr;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    # getter for: Lcom/mediatek/CellConnService/CellConnMgr;->mOnServiceComplete:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$100(Lcom/mediatek/CellConnService/CellConnMgr;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :goto_1
    iget-object v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$1;->this$0:Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/CellConnService/CellConnMgr;->mIsVerifying:Z
    invoke-static {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;->access$302(Lcom/mediatek/CellConnService/CellConnMgr;Z)Z

    goto :goto_0

    .line 206
    :cond_1
    const-string v0, "CellConnMgr"

    const-string v1, "IPhoneStatesCallback no callback to call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

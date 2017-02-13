.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 4208
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4210
    const/4 v0, 0x0

    .line 4212
    .local v0, "resetFlag":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->isDataTransmitting()Z

    move-result v0

    .line 4215
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    if-eqz v1, :cond_0

    .line 4216
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "[SCRI] Detect RAU FollowOnProceed:Force to let resetFlag as true (regard PS session exist)"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4217
    const/4 v0, 0x1

    .line 4218
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    .line 4221
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->getScriState()I

    move-result v1

    if-eq v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->getScriState()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 4222
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI]act:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4224
    if-eqz v0, :cond_2

    .line 4225
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->setPsSessionStatus(Z)V

    .line 4227
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->getScriState()I

    move-result v1

    if-ne v1, v7, :cond_2

    .line 4228
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    const v2, 0x42029

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4229
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->setScriState(I)V

    .line 4233
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->setScriDataCount(Z)V

    .line 4234
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->isPollTimerTrigger(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4236
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->setScriDataCount(Z)V

    .line 4237
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendScriCmd(Z)V

    .line 4241
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "mPollScriStat"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->logd(Ljava/lang/String;)V

    .line 4242
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->scriPollEnabled:Z

    if-eqz v1, :cond_4

    .line 4243
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcTracker;->mScriManager:Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker$ScriManager;->mScriPollTimer:I

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4245
    :cond_4
    return-void
.end method

.class Lcom/mediatek/settings/FemtoPointList$1;
.super Landroid/content/BroadcastReceiver;
.source "FemtoPointList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/FemtoPointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/FemtoPointList;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$002(Lcom/mediatek/settings/FemtoPointList;Z)Z

    .line 70
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED || mAirplaneModeEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mAirplaneModeEnabled:Z
    invoke-static {v3}, Lcom/mediatek/settings/FemtoPointList;->access$000(Lcom/mediatek/settings/FemtoPointList;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const/4 v2, 0x1

    # invokes: Lcom/mediatek/settings/FemtoPointList;->setScreenEnabled(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$200(Lcom/mediatek/settings/FemtoPointList;Z)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    iget-object v2, p0, Lcom/mediatek/settings/FemtoPointList$1;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/FemtoPointList;->access$300(Lcom/mediatek/settings/FemtoPointList;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    goto :goto_0
.end method

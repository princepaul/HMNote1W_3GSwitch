.class Lcom/mediatek/settings/NetworkSettingList$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkSettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkSettingList;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkSettingList;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$002(Lcom/mediatek/settings/NetworkSettingList;Z)Z

    .line 182
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_AIRPLANE_MODE_CHANGED || mAirplaneModeEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mAirplaneModeEnabled:Z
    invoke-static {v3}, Lcom/mediatek/settings/NetworkSettingList;->access$000(Lcom/mediatek/settings/NetworkSettingList;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$100(Lcom/mediatek/settings/NetworkSettingList;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/settings/NetworkSettingList;->access$200(Lcom/mediatek/settings/NetworkSettingList;Z)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/mediatek/settings/NetworkSettingList;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkSettingList;->access$302(Lcom/mediatek/settings/NetworkSettingList;I)I

    .line 186
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # invokes: Lcom/mediatek/settings/NetworkSettingList;->setScreenEnabled(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/settings/NetworkSettingList;->access$200(Lcom/mediatek/settings/NetworkSettingList;Z)V

    goto :goto_0

    .line 187
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkSettingList$1;->this$0:Lcom/mediatek/settings/NetworkSettingList;

    # getter for: Lcom/mediatek/settings/NetworkSettingList;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/NetworkSettingList;->access$400(Lcom/mediatek/settings/NetworkSettingList;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    goto :goto_0
.end method

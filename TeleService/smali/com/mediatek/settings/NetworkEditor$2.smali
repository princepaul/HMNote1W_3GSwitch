.class Lcom/mediatek/settings/NetworkEditor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$102(Lcom/mediatek/settings/NetworkEditor;Z)Z

    .line 122
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # invokes: Lcom/mediatek/settings/NetworkEditor;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$000(Lcom/mediatek/settings/NetworkEditor;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkEditor;->access$202(Lcom/mediatek/settings/NetworkEditor;I)I

    .line 125
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # invokes: Lcom/mediatek/settings/NetworkEditor;->setScreenEnabled()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkEditor;->access$000(Lcom/mediatek/settings/NetworkEditor;)V

    goto :goto_0

    .line 126
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor$2;->this$0:Lcom/mediatek/settings/NetworkEditor;

    # getter for: Lcom/mediatek/settings/NetworkEditor;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/NetworkEditor;->access$300(Lcom/mediatek/settings/NetworkEditor;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    goto :goto_0
.end method

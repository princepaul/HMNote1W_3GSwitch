.class Lcom/mediatek/settings/SelectSimCardActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectSimCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/SelectSimCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/SelectSimCardActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/SelectSimCardActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 85
    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "state":I
    const-string v4, "slotId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 89
    .local v2, "slotId":I
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim card "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/settings/SelectSimCardActivity;->log(Ljava/lang/String;)V

    .line 90
    if-eq v2, v7, :cond_0

    .line 91
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    move-result-object v1

    .line 92
    .local v1, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1, v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimIndicator(I)V

    .line 110
    .end local v1    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v2    # "slotId":I
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->isNoSimInserted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->dealNoSimCardIn()V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    # invokes: Lcom/mediatek/settings/SelectSimCardActivity;->initPreferenceScreen()V
    invoke-static {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->access$000(Lcom/mediatek/settings/SelectSimCardActivity;)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/mediatek/settings/SelectSimCardActivity$1;->this$0:Lcom/mediatek/settings/SelectSimCardActivity;

    invoke-virtual {v4}, Lcom/mediatek/settings/SelectSimCardActivity;->finish()V

    goto :goto_0
.end method

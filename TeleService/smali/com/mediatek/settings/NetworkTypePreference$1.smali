.class Lcom/mediatek/settings/NetworkTypePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/NetworkTypePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/NetworkTypePreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/NetworkTypePreference;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Settings/NetworkTypePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/mediatek/settings/NetworkTypePreference;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$002(Lcom/mediatek/settings/NetworkTypePreference;Z)Z

    .line 59
    iget-object v1, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # invokes: Lcom/mediatek/settings/NetworkTypePreference;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkTypePreference;->access$100(Lcom/mediatek/settings/NetworkTypePreference;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/mediatek/settings/NetworkTypePreference;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$202(Lcom/mediatek/settings/NetworkTypePreference;I)I

    .line 62
    iget-object v1, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # invokes: Lcom/mediatek/settings/NetworkTypePreference;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/NetworkTypePreference;->access$100(Lcom/mediatek/settings/NetworkTypePreference;)V

    goto :goto_0

    .line 63
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkTypePreference$1;->this$0:Lcom/mediatek/settings/NetworkTypePreference;

    # getter for: Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/NetworkTypePreference;->access$300(Lcom/mediatek/settings/NetworkTypePreference;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    goto :goto_0
.end method

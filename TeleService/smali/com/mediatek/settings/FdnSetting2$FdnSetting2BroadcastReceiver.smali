.class Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FdnSetting2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/FdnSetting2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdnSetting2BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/FdnSetting2;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/settings/FdnSetting2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/FdnSetting2;
    .param p2, "x1"    # Lcom/mediatek/settings/FdnSetting2$1;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 504
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1800(Lcom/mediatek/settings/FdnSetting2;)V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1800(Lcom/mediatek/settings/FdnSetting2;)V

    goto :goto_0

    .line 510
    :cond_2
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # getter for: Lcom/mediatek/settings/FdnSetting2;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/FdnSetting2;->access$1500(Lcom/mediatek/settings/FdnSetting2;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    .line 514
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;->this$0:Lcom/mediatek/settings/FdnSetting2;

    # invokes: Lcom/mediatek/settings/FdnSetting2;->updateScreen()V
    invoke-static {v1}, Lcom/mediatek/settings/FdnSetting2;->access$1800(Lcom/mediatek/settings/FdnSetting2;)V

    goto :goto_0
.end method

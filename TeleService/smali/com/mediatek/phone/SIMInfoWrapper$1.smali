.class Lcom/mediatek/phone/SIMInfoWrapper$1;
.super Landroid/content/BroadcastReceiver;
.source "SIMInfoWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/SIMInfoWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/SIMInfoWrapper;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/SIMInfoWrapper;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/mediatek/phone/SIMInfoWrapper$1;->this$0:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(), action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/mediatek/phone/SIMInfoWrapper;->access$000(Ljava/lang/String;)V

    .line 431
    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper$1;->this$0:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v1}, Lcom/mediatek/phone/SIMInfoWrapper;->updateSimInfoCache()V

    .line 436
    :cond_1
    return-void
.end method

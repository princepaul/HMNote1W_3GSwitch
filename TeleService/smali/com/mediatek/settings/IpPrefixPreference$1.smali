.class Lcom/mediatek/settings/IpPrefixPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "IpPrefixPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/IpPrefixPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/IpPrefixPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/IpPrefixPreference;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/settings/IpPrefixPreference$1;->this$0:Lcom/mediatek/settings/IpPrefixPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string v1, "IpPrefixPreference"

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

    .line 47
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/mediatek/settings/IpPrefixPreference$1;->this$0:Lcom/mediatek/settings/IpPrefixPreference;

    iget-object v2, p0, Lcom/mediatek/settings/IpPrefixPreference$1;->this$0:Lcom/mediatek/settings/IpPrefixPreference;

    # getter for: Lcom/mediatek/settings/IpPrefixPreference;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/IpPrefixPreference;->access$000(Lcom/mediatek/settings/IpPrefixPreference;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    .line 52
    :cond_0
    return-void
.end method

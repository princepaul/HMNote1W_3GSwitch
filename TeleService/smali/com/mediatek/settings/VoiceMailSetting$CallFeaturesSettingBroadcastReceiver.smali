.class Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallFeaturesSettingBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/VoiceMailSetting;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;)V
    .locals 0

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;Lcom/mediatek/settings/VoiceMailSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/VoiceMailSetting;
    .param p2, "x1"    # Lcom/mediatek/settings/VoiceMailSetting$1;

    .prologue
    .line 1819
    invoke-direct {p0, p1}, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;-><init>(Lcom/mediatek/settings/VoiceMailSetting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1822
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1823
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 1827
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-virtual {v1}, Lcom/mediatek/settings/VoiceMailSetting;->finish()V

    .line 1833
    :cond_2
    :goto_0
    return-void

    .line 1828
    :cond_3
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1830
    iget-object v1, p0, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    iget-object v2, p0, Lcom/mediatek/settings/VoiceMailSetting$CallFeaturesSettingBroadcastReceiver;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    # getter for: Lcom/mediatek/settings/VoiceMailSetting;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/VoiceMailSetting;->access$1300(Lcom/mediatek/settings/VoiceMailSetting;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.class Lcom/android/internal/telephony/uicc/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1127
    if-nez p2, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1130
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1131
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1600(Lcom/android/internal/telephony/uicc/RuimRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1132
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mSIMInfoReady:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1702(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1133
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 1135
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1136
    .local v2, "phbFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mHandlePhbReadyReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1600(Lcom/android/internal/telephony/uicc/RuimRecords;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1142
    .end local v2    # "phbFilter":Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1143
    const-string v3, "state"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1144
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHandlePhbReadyReceiver MTK_FLIGHT_MODE_POWER_OFF_MD flightmode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1145
    if-eqz v1, :cond_3

    .line 1146
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getMySimId()I

    move-result v3

    if-ne v6, v3, :cond_4

    .line 1147
    const-string v3, "gsm.sim.ril.phbready.2"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1802(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    .line 1156
    .end local v1    # "enabled":Z
    :cond_3
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1157
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v4, "ACTION_SHUTDOWN_IPO: clear PHB_READY systemproperties"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1158
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getMySimId()I

    move-result v3

    if-ne v6, v3, :cond_5

    .line 1159
    const-string v3, "gsm.sim.ril.phbready.2"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords$1;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mPhbReady:Z
    invoke-static {v3, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$1802(Lcom/android/internal/telephony/uicc/RuimRecords;Z)Z

    goto/16 :goto_0

    .line 1149
    .restart local v1    # "enabled":Z
    :cond_4
    const-string v3, "gsm.sim.ril.phbready"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1161
    .end local v1    # "enabled":Z
    :cond_5
    const-string v3, "gsm.sim.ril.phbready"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

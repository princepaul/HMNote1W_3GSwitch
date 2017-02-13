.class Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcStatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/utils/DcStatMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/utils/DcStatMonitor;


# direct methods
.method private constructor <init>(Lcom/android/phone/utils/DcStatMonitor;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/phone/utils/DcStatMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/utils/DcStatMonitor;
    .param p2, "x1"    # Lcom/android/phone/utils/DcStatMonitor$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;-><init>(Lcom/android/phone/utils/DcStatMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string v7, "android.intent.action.ANY_DATA_STATE_MOBILE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "apnType":Ljava/lang/String;
    const-string v7, "default"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 74
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    .line 50
    .local v2, "defaultDataSlotId":I
    const-string v7, "simId"

    sget v8, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 51
    .local v5, "slotId":I
    if-ne v5, v2, :cond_0

    .line 55
    const-class v7, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 57
    .local v6, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v7, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # getter for: Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v7}, Lcom/android/phone/utils/DcStatMonitor;->access$100(Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v7

    if-eq v7, v6, :cond_0

    .line 60
    iget-object v7, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # setter for: Lcom/android/phone/utils/DcStatMonitor;->mConnectState:Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {v7, v6}, Lcom/android/phone/utils/DcStatMonitor;->access$102(Lcom/android/phone/utils/DcStatMonitor;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 61
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_2

    .line 62
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v2}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSlot(I)I

    move-result v4

    .line 63
    .local v4, "networkType":I
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v4}, Lmiui/telephony/TelephonyManagerEx;->getNetworkClass(I)I

    move-result v3

    .line 64
    .local v3, "networkClass":I
    iget-object v7, p0, Lcom/android/phone/utils/DcStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/DcStatMonitor;

    # invokes: Lcom/android/phone/utils/DcStatMonitor;->networkClassToString(I)Ljava/lang/String;
    invoke-static {v7, v3}, Lcom/android/phone/utils/DcStatMonitor;->access$200(Lcom/android/phone/utils/DcStatMonitor;I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "dataNetworkType":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile_data;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "connected_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v1    # "dataNetworkType":Ljava/lang/String;
    .end local v3    # "networkClass":I
    .end local v4    # "networkType":I
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_3

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile_data;disconnected_time;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_4

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile_data;connecting_time;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_0

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mobile_data;suspended_time;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->addCustomEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

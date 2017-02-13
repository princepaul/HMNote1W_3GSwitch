.class public Lcom/android/phone/utils/MiStatInterfaceUtil;
.super Ljava/lang/Object;
.source "MiStatInterfaceUtil.java"


# static fields
.field public static final AppID:Ljava/lang/String; = "2882303761517356493"

.field public static final AppKey:Ljava/lang/String; = "5421735629493"

.field public static CHANNEL:Ljava/lang/String; = null

.field public static final EVENT_SETTINGS:Ljava/lang/String; = "event_settings"

.field public static final KEY_ANSWER_STATE_SETTINGS:Ljava/lang/String; = "key_answer_state_settings"

.field public static final KEY_AUTO_ANSWER_SETTINGS:Ljava/lang/String; = "key_auto_answer_settings"

.field public static final KEY_AUTO_IP_SETTINGS:Ljava/lang/String; = "key_auto_ip_settings"

.field public static final KEY_CALL_ADVANCED_SETTINGS:Ljava/lang/String; = "key_call_advanced_settings"

.field public static final KEY_CALL_RECORD_SETTINGS:Ljava/lang/String; = "key_call_record_settings"

.field public static final KEY_SIP_SETTINGS:Ljava/lang/String; = "key_sip_settings"

.field public static final KEY_TELOCATION_SETTINGS:Ljava/lang/String; = "key_telocation_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "default channel"

    sput-object v0, Lcom/android/phone/utils/MiStatInterfaceUtil;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 34
    const-string v0, "2882303761517356493"

    const-string v1, "5421735629493"

    sget-object v2, Lcom/android/phone/utils/MiStatInterfaceUtil;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 36
    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final recordSettingsEvent(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "event_settings"

    const-string v1, "key_call_record_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->getCallRecordSettingData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    const-string v0, "event_settings"

    const-string v1, "key_telocation_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;->getTelocationSettingData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    const-string v0, "event_settings"

    const-string v1, "key_answer_state_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AnswerStateSettingCloudBackupHelper;->getAnswerStateData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    const-string v0, "event_settings"

    const-string v1, "key_auto_answer_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AutoAnswerSettingCloudBackHelper;->getAutoAnswerData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    const-string v0, "event_settings"

    const-string v1, "key_auto_ip_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->getAutoIpData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    const-string v0, "event_settings"

    const-string v1, "key_call_advanced_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/CallAdvancedSettingCloudBackupHelper;->getCallAdvancedData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    const-string v0, "event_settings"

    const-string v1, "key_sip_settings"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->getSipData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    return-void
.end method

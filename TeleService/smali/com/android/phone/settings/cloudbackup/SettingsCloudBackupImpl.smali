.class public Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;
.super Ljava/lang/Object;
.source "SettingsCloudBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# static fields
.field private static final KEY_ANSWER_STATE:Ljava/lang/String; = "AnswerStateSettings"

.field private static final KEY_AUTO_ANSWER:Ljava/lang/String; = "AutoAnswerSettings"

.field private static final KEY_CALL_ADVANCED:Ljava/lang/String; = "CallAdvancedSettings"

.field private static final KEY_IP_DIAL:Ljava/lang/String; = "IPDial"

.field private static final KEY_PHONE_RECORD_SETTINGS:Ljava/lang/String; = "PhoneRecordSettings"

.field private static final KEY_SIP:Ljava/lang/String; = "SipSettings"

.field private static final KEY_SMS_REPLY:Ljava/lang/String; = "SMSReply"

.field private static final KEY_TELOCATION_SETTINGS:Ljava/lang/String; = "TelocationSettings"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 101
    if-nez p0, :cond_1

    .line 102
    const/4 p0, 0x0

    .line 107
    :cond_0
    :goto_0
    return-object p0

    .line 104
    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    .prologue
    .line 27
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "start settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-nez p2, :cond_0

    .line 29
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "onBackupSettings dataPackage is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "PhoneRecordSettings"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 34
    const-string v0, "TelocationSettings"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    const-string v0, "SMSReply"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/RespondViaSmsSettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 38
    const-string v0, "AnswerStateSettings"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/AnswerStateSettingCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 40
    const-string v0, "AutoAnswerSettings"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/AutoAnswerSettingCloudBackHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    const-string v0, "CallAdvancedSettings"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/CallAdvancedSettingCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    const-string v0, "IPDial"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    const-string v0, "SipSettings"

    invoke-static {p1}, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 48
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "end settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "dataPackage"    # Lcom/xiaomi/settingsdk/backup/data/DataPackage;
    .param p3, "packageVersion"    # I

    .prologue
    .line 53
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "start settings restore. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreSettings dataPackage is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "PhoneRecordSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "PhoneRecordSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 62
    :cond_1
    const-string v0, "TelocationSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "TelocationSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 66
    :cond_2
    const-string v0, "SMSReply"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    const-string v0, "SMSReply"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/RespondViaSmsSettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 70
    :cond_3
    const-string v0, "AnswerStateSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 71
    const-string v0, "AnswerStateSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/AnswerStateSettingCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 74
    :cond_4
    const-string v0, "AutoAnswerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 75
    const-string v0, "AutoAnswerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/AutoAnswerSettingCloudBackHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 78
    :cond_5
    const-string v0, "CallAdvancedSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 79
    const-string v0, "CallAdvancedSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/CallAdvancedSettingCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 82
    :cond_6
    const-string v0, "IPDial"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 83
    const-string v0, "IPDial"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 86
    :cond_7
    const-string v0, "SipSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 87
    const-string v0, "SipSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 91
    :cond_8
    sget-object v0, Lcom/android/phone/settings/cloudbackup/SettingsCloudBackupImpl;->TAG:Ljava/lang/String;

    const-string v1, "end settings restore. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

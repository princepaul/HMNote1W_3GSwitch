.class public Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;
.super Ljava/lang/Object;
.source "AutoIpSettingCloudBackHelper.java"


# static fields
.field private static final CLOUD_SAVE_KEY_CURRENT_AREA_CODE:Ljava/lang/String; = "CKCurrentAreaCode"

.field private static final CLOUD_SAVE_KEY_ENABLE_ADD_ZERO_PREFIX:Ljava/lang/String; = "CKEnableAddZeroPrefix"

.field private static final CLOUD_SAVE_KEY_ENABLE_AUTO_IP:Ljava/lang/String; = "CKEnableAutoIp"

.field private static final CLOUD_SAVE_KEY_ENABLE_SUPPORT_LOCAL_NUMBERS:Ljava/lang/String; = "CKSupportLocalNumber"

.field private static final KEY_AUTO_IP_EXCEPTION_NUMBERS:Ljava/lang/String; = "AutoIpExceptionNumbers"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PREFERENCE_AUTOIP_EXCEPTIONS:Ljava/lang/String; = "_preference_autoip_exceptions"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupAutoIpExceptionNumbers(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 48
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 49
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .local v3, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 52
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 53
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v5, "object":Lorg/json/JSONObject;
    const-string v7, "number"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v7, "name"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Build JSON failed"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object p1

    .line 59
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v7, "AutoIpExceptionNumbers"

    invoke-virtual {p1, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getAutoIpData(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "CKEnableAutoIp"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "CKCurrentAreaCode"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "CKSupportLocalNumber"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "CKEnableAddZeroPrefix"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preference_autoip_exceptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static restoreAutoIpExceptionNumbers(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 90
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v5, "AutoIpExceptionNumbers"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 95
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 96
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v5, "AutoIpExceptionNumbers"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 98
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 99
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "number"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v3    # "object":Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "CKEnableAutoIp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "CKEnableAutoIp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    .line 74
    :cond_1
    const-string v1, "CKCurrentAreaCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "CKCurrentAreaCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 78
    :cond_2
    const-string v1, "CKSupportLocalNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const-string v1, "CKSupportLocalNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;Z)V

    .line 82
    :cond_3
    const-string v1, "CKEnableAddZeroPrefix"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    const-string v1, "CKEnableAddZeroPrefix"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;Z)V

    .line 86
    :cond_4
    invoke-static {p0, p1}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->restoreAutoIpExceptionNumbers(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 30
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v2, "rst":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "CKEnableAutoIp"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    const-string v3, "CKCurrentAreaCode"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v3, "CKSupportLocalNumber"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 38
    const-string v3, "CKEnableAddZeroPrefix"

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-static {p0, v2}, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->backupAutoIpExceptionNumbers(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/AutoIpSettingCloudBackHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Put settings to JSON failed. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

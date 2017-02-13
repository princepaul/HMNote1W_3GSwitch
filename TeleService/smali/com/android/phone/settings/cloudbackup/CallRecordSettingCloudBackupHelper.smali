.class public Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;
.super Ljava/lang/Object;
.source "CallRecordSettingCloudBackupHelper.java"


# static fields
.field private static final CLOUD_SAVE_KEY_AUTO_RECORD:Ljava/lang/String; = "CKAutoRecord"

.field private static final CLOUD_SAVE_KEY_AUTO_RECORD_ALL_OR_CUSTOM:Ljava/lang/String; = "CKAutoRecordAllOrCustom"

.field private static final CLOUD_SAVE_KEY_AUTO_RECORD_RECORD_UNKNOWN:Ljava/lang/String; = "CKAutoRecordRecordUnknown"

.field private static final CLOUD_SAVE_KEY_AUTO_RECORD_RECORD_YELLOW_PAGE:Ljava/lang/String; = "CKAutoRecordRecordYellowPage"

.field private static final CLOUD_SAVE_KEY_AUTO_RECORD_WHITE_LIST:Ljava/lang/String; = "CKAutoRecordWhiteList"

.field private static final CLOUD_SAVE_KEY_NOTIFICATION:Ljava/lang/String; = "CKNotification"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallRecordSettingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
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
    const-string v1, "CKNotification"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isCallRecordNotificationOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "CKAutoRecord"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "CKAutoRecordAllOrCustom"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForAllOrCustom(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "CKAutoRecordRecordYellowPage"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForYellowPage(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "CKAutoRecordRecordUnknown"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForUnknown(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object v0
.end method

.method private static getWhiteListJSON(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v5, "whiteList":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->loadNumbers(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    .line 55
    .local v3, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v4, "pair":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Put whitelist to JSON failed. "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "pair":Lorg/json/JSONArray;
    :cond_0
    return-object v5
.end method

.method public static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v0, "CKNotification"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->setCallRecordNotification(Landroid/content/Context;Z)Z

    .line 75
    const-string v0, "CKAutoRecord"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->setAutoRecord(Landroid/content/Context;Z)Z

    .line 77
    const-string v0, "CKAutoRecordAllOrCustom"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->setAutoRecordForAll(Landroid/content/Context;Z)Z

    .line 79
    const-string v0, "CKAutoRecordRecordYellowPage"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->setAutoRecordForYellowPage(Landroid/content/Context;Z)Z

    .line 81
    const-string v0, "CKAutoRecordRecordUnknown"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/CallRecordSetting;->setAutoRecordForUnknown(Landroid/content/Context;Z)Z

    .line 83
    const-string v0, "CKAutoRecordWhiteList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->setWhiteListWithJSON(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v1, "rst":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "CKNotification"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isCallRecordNotificationOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    const-string v2, "CKAutoRecord"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 36
    const-string v2, "CKAutoRecordAllOrCustom"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForAllOrCustom(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 38
    const-string v2, "CKAutoRecordRecordYellowPage"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForYellowPage(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    const-string v2, "CKAutoRecordRecordUnknown"

    invoke-static {p0}, Lcom/android/phone/settings/CallRecordSetting;->isAutoRecordForUnknown(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    const-string v2, "CKAutoRecordWhiteList"

    invoke-static {p0}, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->getWhiteListJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/android/phone/settings/cloudbackup/CallRecordSettingCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Put settings to JSON failed. "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setWhiteListWithJSON(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v3, "numbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 99
    .local v4, "pair":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 100
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "first":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "second":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 104
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    .end local v0    # "first":Ljava/lang/String;
    .end local v2    # "k":Ljava/lang/String;
    .end local v4    # "pair":Lorg/json/JSONArray;
    .end local v5    # "second":Ljava/lang/String;
    :cond_2
    invoke-static {p0, v3}, Lcom/android/phone/settings/AutoRecordWhiteListSetting;->saveNumbers(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_0
.end method

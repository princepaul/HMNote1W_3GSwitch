.class public Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;
.super Ljava/lang/Object;
.source "SipSettingsCloudBackupHelper.java"


# static fields
.field private static final CLOUD_SAVE_KEY_ENABLE_SIP_RECEIVE_CALLS:Ljava/lang/String; = "CKEnableSipReceiveCalls"

.field private static final CLOUD_SAVE_KEY_SIP_CALL_OPTIONS:Ljava/lang/String; = "CKSipCallOptions"

.field private static final KEY_SIP_PROFILE:Ljava/lang/String; = "SipProfile"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static backupSipProfile(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    new-instance v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "db":Lcom/android/phone/sip/SipProfileDb;
    invoke-virtual {v0}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v8

    .line 43
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/net/sip/SipProfile;>;"
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 46
    .local v4, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/sip/SipProfile;

    .line 47
    .local v7, "profile":Landroid/net/sip/SipProfile;
    new-instance v9, Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    invoke-direct {v9}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;-><init>()V

    invoke-virtual {v9, v7}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->copyFromSipProfile(Landroid/net/sip/SipProfile;)Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    move-result-object v5

    .line 48
    .local v5, "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Build JSON failed"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 51
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string v9, "SipProfile"

    invoke-virtual {p1, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSipData(Landroid/content/Context;)Ljava/util/Map;
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
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v1, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, "sipSharedPreferences":Lcom/android/phone/sip/SipSharedPreferences;
    const-string v2, "CKSipCallOptions"

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "CKEnableSipReceiveCalls"

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object v0
.end method

.method public static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "sipSharedPreferences":Lcom/android/phone/sip/SipSharedPreferences;
    const-string v1, "CKSipCallOptions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "CKSipCallOptions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 65
    :cond_1
    const-string v1, "CKEnableSipReceiveCalls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const-string v1, "CKEnableSipReceiveCalls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    .line 68
    :cond_2
    invoke-static {p0, p1}, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->restoreSipProfile(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private static restoreSipProfile(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v8, "SipProfile"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    const-string v8, "SipProfile"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 77
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 78
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v0, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "db":Lcom/android/phone/sip/SipProfileDb;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 81
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 82
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    invoke-virtual {v2, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/cloudbackup/SipProfileModel;

    .line 83
    .local v5, "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    invoke-virtual {v5}, Lcom/android/phone/settings/cloudbackup/SipProfileModel;->makeSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v7

    .line 84
    .local v7, "sipProfile":Landroid/net/sip/SipProfile;
    invoke-virtual {v0, v7}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    .end local v5    # "model":Lcom/android/phone/settings/cloudbackup/SipProfileModel;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "sipProfile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v1, "rst":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v2, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 31
    .local v2, "sipSharedPreferences":Lcom/android/phone/sip/SipSharedPreferences;
    const-string v3, "CKSipCallOptions"

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v3, "CKEnableSipReceiveCalls"

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    invoke-static {p0, v1}, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->backupSipProfile(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v2    # "sipSharedPreferences":Lcom/android/phone/sip/SipSharedPreferences;
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/android/phone/settings/cloudbackup/SipSettingsCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Put settings to JSON failed. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.class public Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;
.super Ljava/lang/Object;
.source "TelocationSettingCloudBackupHelper.java"


# static fields
.field private static final CLOUD_SAVE_KEY_AUTO_COUNTRY_CODE:Ljava/lang/String; = "CKAutoCountryCode"

.field private static final CLOUD_SAVE_KEY_COUNTRY_CODE:Ljava/lang/String; = "CKCountryCode"

.field private static final CLOUD_SAVE_KEY_CUSTOM_LOCATIONS:Ljava/lang/String; = "CKCustomLocations"

.field private static final CLOUD_SAVE_KEY_SHOW_LOCATION:Ljava/lang/String; = "CKShowLocation"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTelocationSettingData(Landroid/content/Context;)Ljava/util/Map;
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
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "CKShowLocation"

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getShowLocation(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "CKCountryCode"

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getContryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "CKAutoCountryCode"

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getAutoCountryCode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "CKCustomLocations"

    invoke-static {p0}, Lcom/android/phone/settings/CustomLocationActivity;->saveCustomLocations(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v0, "CKShowLocation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/TelocationSetting;->setShowLocation(Landroid/content/Context;I)Z

    .line 46
    const-string v0, "CKCountryCode"

    invoke-static {}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/TelocationSetting;->setCountryCode(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const-string v0, "CKAutoCountryCode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/TelocationSetting;->setAutoCountryCode(Landroid/content/Context;Z)V

    .line 50
    const-string v0, "CKCustomLocations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/settings/EditCustomLocationActivity;->loadCustomLocations(Landroid/content/Context;Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method public static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "CKShowLocation"

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getShowLocation(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    const-string v2, "CKCountryCode"

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getContryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v2, "CKAutoCountryCode"

    invoke-static {p0}, Lcom/android/phone/settings/TelocationSetting;->getAutoCountryCode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 34
    const-string v2, "CKCustomLocations"

    invoke-static {p0}, Lcom/android/phone/settings/CustomLocationActivity;->saveCustomLocations(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-object v0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/android/phone/settings/cloudbackup/TelocationSettingCloudBackupHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Put settings to JSON failed. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

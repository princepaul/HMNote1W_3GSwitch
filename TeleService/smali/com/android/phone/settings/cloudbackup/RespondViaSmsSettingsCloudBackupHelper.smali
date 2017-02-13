.class public Lcom/android/phone/settings/cloudbackup/RespondViaSmsSettingsCloudBackupHelper;
.super Ljava/lang/Object;
.source "RespondViaSmsSettingsCloudBackupHelper.java"


# static fields
.field private static final CLOUD_SAVE_KEY_MESSAGES:Ljava/lang/String; = "CKMessages"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/phone/settings/cloudbackup/RespondViaSmsSettingsCloudBackupHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/cloudbackup/RespondViaSmsSettingsCloudBackupHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v5, "CKMessages"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 43
    .local v0, "dataArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 48
    .local v2, "len":I
    new-array v3, v2, [Landroid/util/Pair;

    .line 49
    .local v3, "msgs":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 50
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 51
    .local v4, "pair":Lorg/json/JSONArray;
    if-nez v4, :cond_2

    .line 49
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    aput-object v5, v3, v1

    goto :goto_2

    .line 56
    .end local v4    # "pair":Lorg/json/JSONArray;
    :cond_3
    invoke-static {p0, v3}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->setMessages(Landroid/content/Context;[Landroid/util/Pair;)V

    goto :goto_0
.end method

.method public static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 22
    .local v2, "dataArray":Lorg/json/JSONArray;
    :try_start_0
    const-string v9, "CKMessages"

    invoke-virtual {v1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {p0}, Lcom/android/phone/settings/RespondViaSmsManager$Settings;->getMessages(Landroid/content/Context;)[Landroid/util/Pair;

    move-result-object v7

    .line 25
    .local v7, "msgs":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v7

    .local v0, "arr$":[Landroid/util/Pair;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 26
    .local v6, "msg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 27
    .local v8, "pair":Lorg/json/JSONArray;
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "arr$":[Landroid/util/Pair;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "msg":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "msgs":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "pair":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 32
    .local v3, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/android/phone/settings/cloudbackup/RespondViaSmsSettingsCloudBackupHelper;->TAG:Ljava/lang/String;

    const-string v10, "Put settings to JSON failed. "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v1
.end method

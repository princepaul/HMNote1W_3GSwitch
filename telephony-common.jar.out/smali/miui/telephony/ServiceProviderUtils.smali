.class public Lmiui/telephony/ServiceProviderUtils;
.super Ljava/lang/Object;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/ServiceProviderUtils$1;,
        Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;,
        Lmiui/telephony/ServiceProviderUtils$Gid1Condition;,
        Lmiui/telephony/ServiceProviderUtils$ImsiCondition;,
        Lmiui/telephony/ServiceProviderUtils$SpnCondition;,
        Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$Condition;,
        Lmiui/telephony/ServiceProviderUtils$ServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;,
        Lmiui/telephony/ServiceProviderUtils$IServiceProvider;,
        Lmiui/telephony/ServiceProviderUtils$Name;
    }
.end annotation


# static fields
.field private static final ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$ServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceProvider"

.field private static final MIUI_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/miui-spn-conf.xml"

.field private static final MIUI_SPN_OVERRIDE_VERSION:I = 0x1

.field private static final SETTING_PREFIX:Ljava/lang/String; = "MOBILE_OPERATOR_NAME_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    .line 255
    invoke-static {}, Lmiui/telephony/ServiceProviderUtils;->loadFromXml()V

    .line 256
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method

.method static synthetic access$300(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 44
    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "longName"    # Z

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 285
    invoke-static {p0}, Lmiui/telephony/ServiceProviderUtils;->getFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 287
    :cond_0
    sget v3, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v3, :cond_1

    .line 288
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result p1

    .line 291
    :cond_1
    invoke-static {p0, p1, p2}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(Ljava/lang/String;ILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v2

    .line 292
    .local v2, "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v2, :cond_3

    .line 293
    invoke-interface {v2}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getName()Lmiui/telephony/ServiceProviderUtils$Name;

    move-result-object v0

    .line 294
    .local v0, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez p3, :cond_2

    iget-object v3, v0, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    iget-object v1, v0, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    .line 298
    .end local v0    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .end local v2    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 299
    :cond_4
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    move-object v1, p2

    .line 304
    :cond_5
    :goto_1
    const-string v3, "ServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v1

    .line 294
    .restart local v0    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .restart local v2    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_6
    iget-object v1, v0, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto :goto_0

    .line 299
    .end local v0    # "name":Lmiui/telephony/ServiceProviderUtils$Name;
    .end local v2    # "sp":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    :cond_7
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static get(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "longName"    # Z

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "spn"    # Ljava/lang/String;
    .param p2, "longName"    # Z

    .prologue
    .line 274
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFromSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MOBILE_OPERATOR_NAME_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 783
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceProvider(Ljava/lang/String;ILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    .locals 9
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v3, 0x0

    .line 335
    .local v3, "result":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 337
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 338
    .local v2, "intNumeric":I
    sget-object v6, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 339
    .local v4, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {v4}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getAllVirtualServiceProvider()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .line 341
    .local v5, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    invoke-virtual {v5, p1, p2, v2}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    move-object v3, v5

    .line 347
    .end local v5    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v4, p1, p2, v2}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->match(ILjava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 348
    move-object v3, v4

    .line 356
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intNumeric":I
    .end local v4    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :cond_2
    :goto_0
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getServiceProvider numeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", spn= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-object v3

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "exception":Ljava/lang/Exception;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid numeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isChinaMobile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string v0, "46000"

    invoke-static {v0, p0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChinaTelecom(Ljava/lang/String;)Z
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string v0, "46003"

    invoke-static {v0, p0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChinaUnicom(Ljava/lang/String;)Z
    .locals 1
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 402
    const-string v0, "46001"

    invoke-static {v0, p0}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChineseServiceProvider(Ljava/lang/String;)Z
    .locals 2
    .param p0, "numeric"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "460"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "numeric1"    # Ljava/lang/String;
    .param p1, "numeric2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 363
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 384
    :cond_1
    :goto_0
    return v2

    .line 367
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    .line 372
    goto :goto_0

    .line 375
    :cond_3
    invoke-static {p0, v6, v7}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(Ljava/lang/String;ILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v0

    .line 376
    .local v0, "sp1":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    invoke-static {p1, v6, v7}, Lmiui/telephony/ServiceProviderUtils;->getServiceProvider(Ljava/lang/String;ILjava/lang/String;)Lmiui/telephony/ServiceProviderUtils$IServiceProvider;

    move-result-object v1

    .line 377
    .local v1, "sp2":Lmiui/telephony/ServiceProviderUtils$IServiceProvider;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 378
    invoke-interface {v0}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v4

    invoke-interface {v1}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 379
    :cond_4
    if-eqz v0, :cond_5

    .line 380
    invoke-interface {v0}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 381
    :cond_5
    if-eqz v1, :cond_6

    .line 382
    invoke-interface {v1}, Lmiui/telephony/ServiceProviderUtils$IServiceProvider;->getBaseNumeric()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 384
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isVirtualServiceProvider(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .param p0, "numeric"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 311
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v5

    .line 316
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 321
    .local v2, "inumeric":I
    sget-object v6, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 322
    .local v3, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-eqz v3, :cond_0

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isRealSlotId(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 323
    :cond_2
    invoke-virtual {v3}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->getAllVirtualServiceProvider()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .line 324
    .local v4, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    invoke-virtual {v4, p1, p2, v2}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;->match(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 325
    const/4 v5, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "inumeric":I
    .end local v3    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    .end local v4    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid numeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadFromXml()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 410
    const/4 v4, 0x0

    .line 412
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 413
    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/miui-spn-conf.xml"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 415
    const-string v6, "spns"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 416
    const/4 v6, 0x0

    const-string v7, "version"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 418
    .local v5, "version":I
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPN file loaded version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eq v5, v10, :cond_1

    .line 421
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SPN file version does\'nt match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    .line 439
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 445
    .end local v5    # "version":I
    :cond_0
    :goto_0
    return-void

    .line 425
    .restart local v5    # "version":I
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 427
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v10, :cond_4

    .line 428
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "name":Ljava/lang/String;
    const-string v6, "spn"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 430
    invoke-static {v4}, Lmiui/telephony/ServiceProviderUtils;->loadSpn(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 432
    :cond_2
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 434
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "version":I
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in miui-spn-conf parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 437
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    .line 439
    :try_start_4
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v2

    .line 441
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 437
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    instance-of v7, v4, Ljava/io/Closeable;

    if-eqz v7, :cond_3

    .line 439
    :try_start_5
    check-cast v4, Ljava/io/Closeable;

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 437
    .restart local v2    # "ioe":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v6

    .line 440
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 441
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "ServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in close parser "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 440
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "version":I
    :catch_3
    move-exception v2

    .line 441
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 437
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_4
    instance-of v6, v4, Ljava/io/Closeable;

    if-eqz v6, :cond_0

    .line 439
    :try_start_6
    move-object v0, v4

    check-cast v0, Ljava/io/Closeable;

    move-object v6, v0

    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 440
    :catch_4
    move-exception v2

    .line 441
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "ServiceProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in close parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method private static loadSpn(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 24
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 463
    const/16 v21, 0x0

    const-string v22, "numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 464
    .local v16, "numericAttribute":Ljava/lang/String;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-static/range {v16 .. v16}, Lmiui/telephony/ServiceProviderUtils;->readNumerics(Ljava/lang/String;)[I

    move-result-object v17

    .line 470
    .local v17, "numerics":[I
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 471
    .local v14, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    new-instance v13, Lmiui/telephony/ServiceProviderUtils$Name;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .line 472
    .local v13, "name":Lmiui/telephony/ServiceProviderUtils$Name;
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    .local v9, "l":I
    :goto_1
    if-ge v7, v9, :cond_8

    .line 473
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 474
    .local v4, "attribute":Ljava/lang/String;
    const-string v21, "alpha"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 475
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    .line 472
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 476
    :cond_3
    const-string v21, "short"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 477
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v13, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto :goto_2

    .line 478
    :cond_4
    const-string v21, "alpha-"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 479
    const-string v21, "alpha-"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 481
    .local v12, "n":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez v12, :cond_5

    .line 482
    new-instance v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .line 483
    .restart local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-virtual {v14, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_5
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    goto :goto_2

    .line 486
    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_6
    const-string v21, "short-"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 487
    const-string v21, "short-"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 489
    .restart local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    if-nez v12, :cond_7

    .line 490
    new-instance v12, Lmiui/telephony/ServiceProviderUtils$Name;

    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    .line 491
    .restart local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    invoke-virtual {v14, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_7
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    goto/16 :goto_2

    .line 497
    .end local v4    # "attribute":Ljava/lang/String;
    .end local v12    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_8
    iget-object v0, v13, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 501
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const/16 v21, 0x0

    const-string v22, "condition"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lmiui/telephony/ServiceProviderUtils;->readConditions(Ljava/lang/String;Ljava/util/Map;)[Lmiui/telephony/ServiceProviderUtils$Condition;

    move-result-object v5

    .line 505
    .local v5, "conditions":[Lmiui/telephony/ServiceProviderUtils$Condition;
    const/16 v21, 0x0

    const-string v22, "mvno"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 506
    .local v11, "mvno":Ljava/lang/String;
    const-string v21, "true"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 507
    new-instance v18, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14, v5}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;-><init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 508
    .local v18, "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    move-object/from16 v3, v17

    .local v3, "arr$":[I
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_9

    aget v15, v3, v8

    .line 509
    .local v15, "numeric":I
    sget-object v21, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 512
    .end local v15    # "numeric":I
    :cond_9
    const-string v21, "ServiceProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loaded spn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 516
    .end local v3    # "arr$":[I
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    :cond_a
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 517
    .local v19, "usedServiceProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lmiui/telephony/ServiceProviderUtils$ServiceProvider;>;"
    move-object/from16 v3, v17

    .restart local v3    # "arr$":[I
    array-length v10, v3

    .restart local v10    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v10, :cond_0

    aget v15, v3, v8

    .line 518
    .restart local v15    # "numeric":I
    sget-object v21, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .line 519
    .restart local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    if-nez v18, :cond_b

    .line 521
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v6, "empty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    const-string v21, ""

    new-instance v22, Lmiui/telephony/ServiceProviderUtils$Name;

    const/16 v23, 0x0

    invoke-direct/range {v22 .. v23}, Lmiui/telephony/ServiceProviderUtils$Name;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    new-instance v18, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;

    .end local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v15, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v6, v2}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;-><init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 524
    .restart local v18    # "sp":Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
    sget-object v21, Lmiui/telephony/ServiceProviderUtils;->ALL_SERVICE_PROVIDER:Landroid/util/SparseArray;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    .end local v6    # "empty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 528
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    new-instance v20, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14, v5}, Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;-><init>(Lmiui/telephony/ServiceProviderUtils$ServiceProvider;Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 530
    .local v20, "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->addMvno(Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;)V

    .line 532
    const-string v21, "ServiceProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Loaded virtual spn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    .end local v20    # "vsp":Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4
.end method

.method public static onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "alpha":Ljava/lang/String;
    const/4 v3, 0x0

    .line 739
    .local v3, "numeric":Ljava/lang/String;
    const/4 v1, 0x0

    .line 740
    .local v1, "isNumeric":Z
    const-string v4, "gsm.sim.operator.alpha"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 741
    move-object v0, p2

    .line 742
    if-nez p0, :cond_2

    const-string v4, "gsm.sim.operator.numeric"

    :goto_0
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    if-nez p0, :cond_3

    const-string v4, "gsm.sim.operator.orig.alpha"

    :goto_1
    invoke-static {v4, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_0
    :goto_2
    if-nez v3, :cond_c

    .line 763
    if-eqz v1, :cond_1

    .line 764
    if-nez p0, :cond_b

    .end local p1    # "property":Ljava/lang/String;
    :goto_3
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_4
    return-object p2

    .line 742
    .restart local p1    # "property":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, "gsm.sim.operator.numeric.2"

    goto :goto_0

    .line 744
    :cond_3
    const-string v4, "gsm.sim.operator.orig.alpha.2"

    goto :goto_1

    .line 745
    :cond_4
    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 746
    move-object v3, p2

    .line 747
    if-nez p0, :cond_5

    const-string v4, "gsm.sim.operator.orig.alpha"

    :goto_5
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    const/4 v1, 0x1

    .line 749
    const-string p1, "gsm.sim.operator.alpha"

    goto :goto_2

    .line 747
    :cond_5
    const-string v4, "gsm.sim.operator.orig.alpha.2"

    goto :goto_5

    .line 750
    :cond_6
    const-string v4, "gsm.operator.alpha"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 751
    move-object v0, p2

    .line 752
    if-nez p0, :cond_7

    const-string v4, "gsm.operator.numeric"

    :goto_6
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    if-nez p0, :cond_8

    const-string v4, "gsm.operator.orig.alpha"

    :goto_7
    invoke-static {v4, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 752
    :cond_7
    const-string v4, "gsm.operator.numeric.2"

    goto :goto_6

    .line 754
    :cond_8
    const-string v4, "gsm.operator.orig.alpha.2"

    goto :goto_7

    .line 755
    :cond_9
    const-string v4, "gsm.operator.numeric"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 756
    move-object v3, p2

    .line 757
    if-nez p0, :cond_a

    const-string v4, "gsm.operator.orig.alpha"

    :goto_8
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    const/4 v1, 0x1

    .line 759
    const-string p1, "gsm.operator.alpha"

    goto :goto_2

    .line 757
    :cond_a
    const-string v4, "gsm.operator.orig.alpha.2"

    goto :goto_8

    .line 764
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 769
    :cond_c
    const/4 v4, 0x1

    invoke-static {v3, p0, v0, v4}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 770
    .local v2, "newAlpha":Ljava/lang/String;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 771
    :cond_d
    move-object v2, v0

    .line 774
    :cond_e
    if-eqz v1, :cond_10

    .line 775
    if-nez p0, :cond_f

    .end local p1    # "property":Ljava/lang/String;
    :goto_9
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .restart local p1    # "property":Ljava/lang/String;
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_10
    move-object p2, v2

    .line 778
    goto/16 :goto_4
.end method

.method private static readConditions(Ljava/lang/String;Ljava/util/Map;)[Lmiui/telephony/ServiceProviderUtils$Condition;
    .locals 17
    .param p0, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/telephony/ServiceProviderUtils$Name;",
            ">;)[",
            "Lmiui/telephony/ServiceProviderUtils$Condition;"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 539
    const/4 v15, 0x0

    .line 578
    :goto_0
    return-object v15

    .line 542
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 543
    .local v4, "conditionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v15, ";"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v2, v1, v7

    .line 544
    .local v2, "c":Ljava/lang/String;
    const-string v15, ":"

    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "cs":[Ljava/lang/String;
    array-length v15, v5

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 546
    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 547
    .local v13, "type":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 548
    .local v14, "value":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2c

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 549
    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 551
    :cond_2
    const-string v15, "alpha"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 552
    const-string v15, "alpha"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 553
    :cond_3
    const-string v15, "numericSpn"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 554
    const-string v15, "numericSpn"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 558
    .end local v2    # "c":Ljava/lang/String;
    .end local v5    # "cs":[Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v3, "conditionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/telephony/ServiceProviderUtils$Condition;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":I
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 560
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v15, "alpha"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 561
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 562
    .local v12, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "arr$":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v9, v1

    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v9, :cond_6

    aget-object v11, v1, v8

    .line 563
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 565
    .end local v11    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/telephony/ServiceProviderUtils$Name;

    .line 566
    .local v10, "n":Lmiui/telephony/ServiceProviderUtils$Name;
    iget-object v15, v10, Lmiui/telephony/ServiceProviderUtils$Name;->longAlpha:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v15, v10, Lmiui/telephony/ServiceProviderUtils$Name;->shortAlpha:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 569
    .end local v10    # "n":Lmiui/telephony/ServiceProviderUtils$Name;
    :cond_7
    new-instance v16, Lmiui/telephony/ServiceProviderUtils$SpnCondition;

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmiui/telephony/ServiceProviderUtils$SpnCondition;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 570
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    const-string v15, "imsi"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 571
    new-instance v16, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 572
    :cond_9
    const-string v15, "gid1"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 573
    new-instance v16, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lmiui/telephony/ServiceProviderUtils$Gid1Condition;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 574
    :cond_a
    const-string v15, "numericSpn"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 575
    new-instance v15, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;-><init>(Lmiui/telephony/ServiceProviderUtils$1;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 578
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Lmiui/telephony/ServiceProviderUtils$Condition;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lmiui/telephony/ServiceProviderUtils$Condition;

    goto/16 :goto_0
.end method

.method private static readNumerics(Ljava/lang/String;)[I
    .locals 10
    .param p0, "numericAttribute"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 449
    .local v6, "numerics":[Ljava/lang/String;
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    .line 450
    .local v8, "sia":Landroid/util/SparseIntArray;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 451
    .local v5, "numeric":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 452
    .local v4, "num":I
    invoke-virtual {v8, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v4    # "num":I
    .end local v5    # "numeric":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    new-array v7, v9, [I

    .line 456
    .local v7, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_1

    .line 457
    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_1
    return-object v7
.end method

.class public final Lcom/mediatek/phone/gemini/GeminiUtils;
.super Lcom/mediatek/gemini/simui/CommonUtils;
.source "GeminiUtils.java"


# static fields
.field private static final CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field public static final EXTRA_CDMA_SUPPORT:Ljava/lang/String; = "EXTRA_CDMA_SUPPORT"

.field private static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final GEMINI_FDN_URI:[Ljava/lang/String;

.field public static final GEMINI_PIN2_RETRY:[Ljava/lang/String;

.field public static final GEMINI_PUK2_RETRY:[Ljava/lang/String;

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static final INTENT_CARD_SELECT:Ljava/lang/String; = "com.mediatek.gemini.action.SELECT_SIM"

.field private static final MCCMNC_TABLE_TYPE_CU:[Ljava/lang/String;

.field public static final MODEM_MASK_LTE:I = 0x80

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final PROGRESS_DIALOG:I = 0x190

.field public static final REQUEST_SIM_SELECT:I = 0x64

.field public static final SIM:Ljava/lang/String; = "SIM"

.field public static final SIM_TYPE_SIM_TAG:Ljava/lang/String; = "SIM"

.field public static final SIM_TYPE_USIM_TAG:Ljava/lang/String; = "USIM"

.field public static final SWITCH_MANUAL_ALLOWED_SLOT1:I = 0x1

.field public static final SWITCH_MANUAL_ALLOWED_SLOT2:I = 0x2

.field public static final SWITCH_MANUAL_ALLOWED_SLOT3:I = 0x4

.field public static final SWITCH_MANUAL_ALLOWED_SLOT4:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Gemini"

.field public static final THEME_RESOURCE_ID:Ljava/lang/String; = "Theme_resource_id"

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field public static final UNDEFINED_SIM_ID:J = -0x1L

.field public static final UNDEFINED_SLOT_ID:I = -0x1

.field public static final USIM:Ljava/lang/String; = "USIM"

.field private static sInstance:Lcom/mediatek/phone/gemini/GeminiUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    new-instance v0, Lcom/mediatek/phone/gemini/GeminiUtils;

    invoke-direct {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;-><init>()V

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->sInstance:Lcom/mediatek/phone/gemini/GeminiUtils;

    .line 102
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "content://icc/fdn1"

    aput-object v1, v0, v4

    const-string v1, "content://icc/fdn2"

    aput-object v1, v0, v5

    const-string v1, "content://icc/fdn3"

    aput-object v1, v0, v6

    const-string v1, "content://icc/fdn4"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_FDN_URI:[Ljava/lang/String;

    .line 109
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "gsm.sim.retry.pin2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.retry.pin2.2"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.retry.pin2.3"

    aput-object v1, v0, v6

    const-string v1, "gsm.sim.retry.pin2.4"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PIN2_RETRY:[Ljava/lang/String;

    .line 116
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "gsm.sim.retry.puk2"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.retry.puk2.2"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.retry.puk2.3"

    aput-object v1, v0, v6

    const-string v1, "gsm.sim.retry.puk2.4"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PUK2_RETRY:[Ljava/lang/String;

    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "button_fdn_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "button_cf_expand_key"

    aput-object v2, v1, v4

    const-string v2, "com.mediatek.settings.CdmaCallForwardOptions"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "button_cb_expand_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "button_plmn_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "button_carrier_sel_key"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "button_more_expand_key"

    aput-object v3, v2, v4

    const-string v3, "com.mediatek.settings.CdmaCallWaitingOptions"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    .line 676
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v4

    const-string v1, "46006"

    aput-object v1, v0, v5

    const-string v1, "45407"

    aput-object v1, v0, v6

    const-string v1, "46005"

    aput-object v1, v0, v7

    const-string v1, "45502"

    aput-object v1, v0, v8

    sput-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->MCCMNC_TABLE_TYPE_CU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/gemini/simui/CommonUtils;-><init>()V

    return-void
.end method

.method public static get3GCapabilitySIM()I
    .locals 5

    .prologue
    .line 250
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 252
    .local v0, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/common/telephony/ITelephonyEx;->get3GCapabilitySIM()I

    move-result v2

    .line 253
    .local v2, "slot3G":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GCapabilitySIM, slot3G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "slot3G":I
    :goto_0
    return v2

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GCapabilitySIM, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return -1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 257
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static get3GSimCards(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, "siminfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 280
    .local v3, "simInserted":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 281
    .local v2, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->getBaseband(I)I

    move-result v0

    .line 282
    .local v0, "baseband":I
    const/4 v5, 0x3

    if-le v0, v5, :cond_0

    .line 283
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    .end local v0    # "baseband":I
    .end local v2    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    return-object v4
.end method

.method private static getCDMAFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 620
    sget-object v2, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    array-length v1, v2

    .line 621
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 622
    sget-object v2, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    sget-object v2, Lcom/mediatek/phone/gemini/GeminiUtils;->CDMA_CHANGE_FEATURE:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 626
    :goto_1
    return-object v2

    .line 621
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method public static getCDMASlot()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlotByPhoneType(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultSlot()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public static getIndexInArray(I[I)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "array"    # [I

    .prologue
    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 350
    aget v1, p1, v0

    if-ne p0, v1, :cond_0

    .line 355
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 349
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIndexInArray failed, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", array="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 355
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getIntSystemProperties(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 467
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getItemStatus(Landroid/content/Context;I)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soltId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v5, p1}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "type":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getItemStatus...type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "entriesVlues":[Ljava/lang/String;
    const-string v0, "9"

    .line 659
    .local v0, "DISABLE_ITEM":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v3, "itemStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 661
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 662
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 665
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 667
    :cond_1
    return-object v3
.end method

.method public static getNetworkOperatorName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 206
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "operatorName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 209
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 210
    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v2

    .line 211
    .local v2, "slotIndex":I
    if-ltz v2, :cond_0

    .line 212
    sget-object v3, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .end local v0    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v2    # "slotIndex":I
    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "operatorName":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 194
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 195
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorName, operatorName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 201
    .end local v1    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorName, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operatorName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 202
    return-object v0

    .line 199
    :cond_1
    const-string v2, "gsm.operator.alpha"

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPin2RetryNumber(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 323
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 324
    .local v0, "index":I
    const/4 v1, -0x1

    .line 325
    .local v1, "number":I
    if-ltz v0, :cond_0

    .line 326
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->GSM_SIM_RETRY_PIN2_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 328
    :cond_0
    return v1
.end method

.method public static getPinRetryNumber(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 314
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 315
    .local v0, "index":I
    const/4 v1, -0x1

    .line 316
    .local v1, "number":I
    if-ltz v0, :cond_0

    .line 317
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->GSM_SIM_RETRY_PIN_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 319
    :cond_0
    return v1
.end method

.method public static getPuk2RetryNumber(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 332
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 333
    .local v0, "index":I
    const/4 v1, -0x1

    .line 334
    .local v1, "number":I
    if-ltz v0, :cond_0

    .line 335
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->GSM_SIM_RETRY_PUK2_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v1

    .line 337
    :cond_0
    return v1
.end method

.method public static getSimFdnUri(I)Landroid/net/Uri;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 305
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 306
    sget-object v2, Lcom/mediatek/phone/GeminiConstants;->FDN_CONTENT_GEMINI:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 310
    :goto_0
    return-object v1

    .line 308
    :cond_0
    const-string v2, "content://icc/fdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 712
    const/4 v0, 0x0

    .line 714
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isSimStateReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 717
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 722
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":::getSimOperator::simOperator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 723
    return-object v0

    .line 719
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimSlotIdBySimInfoId(JLjava/util/List;)I
    .locals 4
    .param p0, "simInfoId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 509
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 510
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 513
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getSiminfoIdBySimSlotId(ILjava/util/List;)J
    .locals 4
    .param p0, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 518
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p0, :cond_0

    .line 519
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 522
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getSlotByPhoneType(I)I
    .locals 3
    .param p0, "phoneType"    # I

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "slot":I
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSlotByPhoneType(I)I

    move-result v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotByPhoneType with phontType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and return slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 407
    return v0
.end method

.method public static final getSlotCount()I
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/mediatek/phone/GeminiConstants;->SLOTS:[I

    array-length v0, v0

    return v0
.end method

.method public static getSlotId(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "themeResId"    # I

    .prologue
    .line 579
    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v1

    .line 580
    .local v1, "slotId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mediatek.gemini.action.SELECT_SIM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v2, "Theme_resource_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 587
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "Gemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v1
.end method

.method public static getSlotIdByRegisterEvent(I[I)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "array"    # [I

    .prologue
    const/4 v2, -0x1

    .line 637
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 638
    invoke-static {p0, p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v1

    .line 639
    .local v1, "index":I
    if-eq v1, v2, :cond_0

    .line 640
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 641
    .local v0, "geminiSlots":[I
    aget v2, v0, v1

    .line 643
    .end local v0    # "geminiSlots":[I
    :cond_0
    return v2
.end method

.method public static getSlots()[I
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/mediatek/phone/GeminiConstants;->SLOTS:[I

    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTargetIntent(ILandroid/preference/Preference;)Landroid/content/Intent;
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 604
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    return-object v0
.end method

.method public static getTargetSlotId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 492
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "simInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 494
    .local v1, "simSize":I
    const/4 v2, -0x1

    .line 495
    .local v2, "slotId":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 496
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 498
    :cond_0
    return v2
.end method

.method public static getVTNetworkOperatorName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 6
    .param p0, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "operatorName":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p0, :cond_2

    .line 228
    const/4 v3, -0x1

    .line 229
    .local v3, "slot":I
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 230
    .local v1, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    .line 231
    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 233
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getIndexInArray(I[I)I

    move-result v0

    .line 234
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 235
    sget-object v4, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_OPERATOR_ALPHAS:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .end local v0    # "index":I
    .end local v1    # "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v3    # "slot":I
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVTNetworkOperatorName, operatorName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 241
    return-object v2

    .line 238
    :cond_2
    const-string v4, "gsm.operator.alpha"

    invoke-static {v4}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "voiceMailNumber":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    return-object v0
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 488
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 489
    return-void
.end method

.method public static handleSimHotSwap(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "slotId"    # I

    .prologue
    .line 571
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 572
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const-string v1, "Gemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slot id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {p1, v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSiminfoIdBySimSlotId(ILjava/util/List;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 576
    :cond_0
    return-void
.end method

.method public static is3GSwitchManualEnableSlot(IZI)Z
    .locals 8
    .param p0, "slotId"    # I
    .param p1, "is3GSwitchManualChangeAllowed"    # Z
    .param p2, "manualAllowedSlot"    # I

    .prologue
    .line 531
    if-nez p2, :cond_0

    .line 532
    const-string v6, "not sim card support manual 3G Switch"

    invoke-static {v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x0

    .line 548
    :goto_0
    return v2

    .line 535
    :cond_0
    const/4 v2, 0x0

    .line 536
    .local v2, "is3GSwitchManualSupportSlot":Z
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->query3GSwitchManualEnableSlotId(I)[I

    move-result-object v4

    .line 537
    .local v4, "manualAllowedSlotId":[I
    if-eqz p1, :cond_2

    .line 538
    const/4 v2, 0x1

    .line 547
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is3GSwitchManualSupportSlot, slotId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_2
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v3, :cond_1

    aget v5, v0, v1

    .line 541
    .local v5, "slotItem":I
    if-ne v5, p0, :cond_3

    .line 542
    const/4 v2, 0x1

    .line 543
    goto :goto_1

    .line 540
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static isCUCard(I)Z
    .locals 7
    .param p0, "slotId"    # I

    .prologue
    .line 686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":::isCUCard::sLotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 687
    const/4 v4, 0x0

    .line 688
    .local v4, "simOperator":Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 689
    if-eqz v4, :cond_1

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":::isCUSim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 691
    sget-object v0, Lcom/mediatek/phone/gemini/GeminiUtils;->MCCMNC_TABLE_TYPE_CU:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 692
    .local v3, "mccmnc":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    const/4 v5, 0x1

    .line 697
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mccmnc":Ljava/lang/String;
    :goto_1
    return v5

    .line 691
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "mccmnc":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mccmnc":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isDialing(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 454
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, "isDialing":Z
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 457
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 458
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDialing, isDialing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 459
    return v1

    .line 457
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGeminiSupport()Z
    .locals 2

    .prologue
    .line 365
    sget v0, Lcom/mediatek/phone/GeminiConstants;->SOLT_NUM:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInChina()Z
    .locals 2

    .prologue
    .line 779
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "iccOperatorNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLte()Z
    .locals 1

    .prologue
    .line 752
    const-string v0, ":::isLte::false"

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public static isLteDC()Z
    .locals 1

    .prologue
    .line 802
    const-string v0, ":::isLteDC::false"

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public static isLteDcModeEnable(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":::isLteDcModeEnable::slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 815
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isPinLock(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    const-string v2, ":::isLteDcModeEnable:: at tdd surport, the pinLock,shoule disable"

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 838
    :goto_0
    return v1

    .line 820
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2, p0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "type":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SIM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    const-string v2, ":::isLteDcModeEnable:: sim shoule disable"

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isCUCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 827
    const-string v2, ":::isLteDcModeEnable:: shoule disable"

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isWorldPhone()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isInChina()Z

    move-result v2

    if-nez v2, :cond_3

    .line 833
    const-string v2, ":::isLteDcModeEnable:: shoule disable"

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_3
    const-string v1, ":::isLteDcModeEnable:: shoule enable"

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 838
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPhbReady(Lcom/android/internal/telephony/Phone;I)Z
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "slotId"    # I

    .prologue
    .line 411
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 412
    invoke-static {p1}, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->isPhbReady(I)Z

    move-result v0

    .line 413
    .local v0, "isPhbReady":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccRecordsLoaded : isPhbReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 414
    return v0
.end method

.method public static isPhoneBackgroundCallIdle(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 442
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneBackgroundCallIdle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 444
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    return v0
.end method

.method public static isPhoneForegroundCallIdle(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 432
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneForegroundCallIdle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 434
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    return v0
.end method

.method public static isPhoneRingingCallIdle(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 422
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPhoneRingingCallIdle :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 424
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    return v0
.end method

.method public static isPinLock(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, "isPinLock":Z
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 741
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":::isPinLock::isPinLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":::getSimState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 743
    return v0

    .line 740
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimInService(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 471
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getServiceState(Lcom/android/internal/telephony/Phone;I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 472
    .local v0, "state":I
    const-string v1, "Gemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInService state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSimStateReady(I)Z
    .locals 4
    .param p0, "slot"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "isSimStateReady":Z
    const/4 v1, 0x5

    invoke-static {p0}, Lcom/mediatek/phone/wrapper/TelephonyManagerWrapper;->getSimState(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 479
    :goto_0
    const-string v1, "Gemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimStateReady isSimStateReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v0

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTddSupportForLte()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 847
    const-string v3, ":::isTddSupportForLte"

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isLteDC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    .local v0, "ret":Z
    .local v1, "state":I
    .local v2, "temPhoneMgrEx":Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    :goto_0
    return v0

    .line 854
    .end local v0    # "ret":Z
    .end local v1    # "state":I
    .end local v2    # "temPhoneMgrEx":Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    :cond_0
    const/4 v1, 0x0

    .line 855
    .restart local v1    # "state":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v2, v3, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    .line 856
    .restart local v2    # "temPhoneMgrEx":Lcom/mediatek/phone/PhoneInterfaceManagerEx;
    invoke-virtual {v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getActiveModemType()I

    move-result v1

    .line 857
    const/4 v3, 0x5

    if-ne v3, v1, :cond_1

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isWorldPhone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 858
    .restart local v0    # "ret":Z
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":::isTddSupportForLte modem state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is world phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isWorldPhone()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isValidSlot(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 175
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSlots()[I

    move-result-object v0

    .line 176
    .local v0, "geminiSlots":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 177
    aget v2, v0, v1

    if-ne v2, p0, :cond_0

    .line 178
    const/4 v2, 0x1

    .line 181
    :goto_1
    return v2

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isWorldPhone()Z
    .locals 1

    .prologue
    .line 792
    const-string v0, ":::isWorldPhone:false"

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 672
    const-string v0, "Gemini"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void
.end method

.method public static query3GSwitchManualEnableSlotId(I)[I
    .locals 6
    .param p0, "manualAllowedSlot"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 558
    .local v0, "manualAllowedSlotId":[I
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 559
    aput v2, v0, v2

    .line 567
    :cond_0
    :goto_0
    return-object v0

    .line 560
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 561
    aput v3, v0, v3

    goto :goto_0

    .line 562
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 563
    aput v4, v0, v4

    goto :goto_0

    .line 564
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_0

    .line 565
    aput v5, v0, v5

    goto :goto_0

    .line 557
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static startActivity(ILandroid/preference/Preference;Lcom/mediatek/settings/PreCheckForRunning;)V
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "preCfr"    # Lcom/mediatek/settings/PreCheckForRunning;

    .prologue
    .line 592
    invoke-static {p0, p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getTargetIntent(ILandroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v0

    .line 593
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 594
    const/16 v1, 0x12e

    invoke-virtual {p2, v0, p0, v1}, Lcom/mediatek/settings/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 596
    :cond_0
    return-void
.end method

.method public static startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;IZ)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 2
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "simId"    # I
    .param p6, "isSipPhone"    # Z

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "asyncQuery":Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p6, :cond_0

    .line 387
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQueryEx(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 391
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateSglteMode(Landroid/preference/ListPreference;I)V
    .locals 5
    .param p0, "preference"    # Landroid/preference/ListPreference;
    .param p1, "modemNetworkMode"    # I

    .prologue
    const/16 v4, 0x9

    .line 876
    const-string v2, "Gemini"

    const-string v3, ":::updateSgletSummary: FeatureOption.MTK_LTE_SUPPORT = false"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->get3GCapabilitySIM()I

    move-result v0

    .line 878
    .local v0, "slotId":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/PhoneInterfaceManagerEx;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[:::updateSgletSummary:sim type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->log(Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isTddSupportForLte()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 881
    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->isCUCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 882
    :cond_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 883
    const-string v2, "Gemini"

    const-string v3, ":::1 updateSgletSummary0:sumary set empty and disable"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :goto_0
    return-void

    .line 885
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v4, :cond_3

    .line 886
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 888
    const-string v2, "Gemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":::1 updateSgletSummary1:sumary::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :cond_3
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 891
    const-string v2, "Gemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":::1 updateSgletSummary2:sumary::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    :cond_4
    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 896
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 897
    const-string v2, "Gemini"

    const-string v3, ":::updateSgletSummary0:sumary set empty and disable"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_5
    if-eqz p1, :cond_6

    if-ne p1, v4, :cond_7

    .line 900
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 902
    const-string v2, "Gemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":::updateSgletSummary1:sumary::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    :cond_7
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 905
    const-string v2, "Gemini"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":::updateSgletSummary2:sumary::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

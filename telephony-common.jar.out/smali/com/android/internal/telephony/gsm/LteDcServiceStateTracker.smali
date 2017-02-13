.class final Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "LteDcServiceStateTracker.java"


# static fields
.field static final DBG:Z = true


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 53
    const-string v0, "Create LteDcServiceStateTracker"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcSST]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method


# virtual methods
.method protected createSpnUpdateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 59
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected getOperatorIsoCountry(I)Ljava/lang/String;
    .locals 1
    .param p1, "mSimId"    # I

    .prologue
    .line 129
    const-string v0, ""

    .line 131
    .local v0, "retStr":Ljava/lang/String;
    return-object v0
.end method

.method protected getOperatorNumericBySim(I)Ljava/lang/String;
    .locals 1
    .param p1, "mSimId"    # I

    .prologue
    .line 123
    const-string v0, ""

    .line 125
    .local v0, "retStr":Ljava/lang/String;
    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDcSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method protected setCurrentPreferredNwType()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "override:setCurrentPreferredNwType() do nothing."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    .line 146
    const-string v0, "override:setPowerStateToDesired() do nothing."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected updateCsNetworkType(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "csNetworkType"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_CS_NETWORK_TYPE_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected updateDataNetworkType(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "dataNetworkType"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_DATA_NETWORK_TYPE_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected updateOperatorAlpha(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_ALPHA_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected updateOperatorIsRoaming(IZ)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_ISROAMING_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method protected updateOperatorIsoCountry(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "operatorIsoCountry"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_ISO_COUNTRY_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected updateOperatorNumeric(ILjava/lang/String;)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_OPERATOR_NUMERIC_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected updateRoamingIndicatorNeeded(IZ)I
    .locals 2
    .param p1, "mSimId"    # I
    .param p2, "isNeeded"    # Z

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update PROPERTY_ROAMING_INDICATOR_NEEDED_LTEDC to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    return v0

    .line 117
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method protected updateSpnDisplay(Z)V
    .locals 1
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 154
    const-string v0, "override:updateSpnDisplay() do nothing."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteDcServiceStateTracker;->log(Ljava/lang/String;)V

    .line 155
    return-void
.end method

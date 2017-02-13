.class public Lcom/mediatek/phone/wrapper/ITelephonyWrapper;
.super Ljava/lang/Object;
.source "ITelephonyWrapper.java"


# static fields
.field public static final DEFAULT_SLOT_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ITelephonyWrapper"

.field public static mITelephony:Lcom/android/internal/telephony/ITelephony;

.field public static mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgrEx:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    sput-object v0, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 21
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    sput-object v0, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccCardType(I)Ljava/lang/String;
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 46
    const-string v1, ""

    .line 48
    .local v1, "iccCardType":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ITelephonyWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.getMessage is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSimIndicatorState(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 62
    const/4 v1, -0x1

    .line 64
    .local v1, "simIndicatorState":I
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSimIndicatorState(I)I

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 67
    :cond_0
    sget-object v2, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSimIndicatorState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ITelephonyWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSimIndicatorState] e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasIccCard(I)Z
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->hasIccCard(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    const-string v2, "ITelephonyWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hasIccCard], slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ITelephonyWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.getMessage is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isPhbReady(I)Z
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    sget-object v2, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v2, p0}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReady(I)Z

    move-result v1

    .line 34
    :goto_0
    return v1

    .line 29
    :cond_0
    sget-object v2, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->isPhbReady(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ITelephonyWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.getMessage is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isTestIccCard()Z
    .locals 6

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, "retval":Z
    :try_start_0
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/mediatek/phone/wrapper/PhoneWrapper;->getSlotNotIdle(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 84
    .local v2, "slot":I
    const-string v3, "ITelephonyWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 86
    sget-object v3, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v3, v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->isTestIccCard(I)Z

    move-result v1

    .line 94
    .end local v2    # "slot":I
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    sget-object v3, Lcom/mediatek/phone/wrapper/ITelephonyWrapper;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/mediatek/common/telephony/ITelephonyEx;->isTestIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ITelephonyWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
